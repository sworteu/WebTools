#tag Module
Protected Module WebTools
	#tag Method, Flags = &h0
		Function Data(Extends Source As Picture) As Picture
		  dim mask as new picture(source.width,source.height,32)
		  mask.graphics.drawpicture(source.mask,0,0)
		  
		  source.mask.graphics.forecolor = &c000000
		  source.mask.graphics.fillrect(0,0,source.width,source.height)
		  
		  dim r as new picture(source.width,source.height,32)
		  r.graphics.drawpicture(source,0,0)
		  
		  source.mask.graphics.drawpicture(mask,0,0)
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resize(Extends Larger As Picture, Width As Integer, Height As Integer) As Picture
		  Dim Smaller As New Picture(Width,Height,32)
		  
		  Smaller.Graphics.DrawPicture(Larger.Data,0,0,Smaller.Width,Smaller.Height,0,0,Larger.Width,Larger.Height)
		  
		  Smaller.Mask.Graphics.DrawPicture(Larger.Mask,0,0,Smaller.Width,Smaller.Height,0,0,Larger.Width,Larger.Height)
		  
		  Return Smaller
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringToHexWT(src as string, Optional separator as string = "") As string
		  dim n, L, v as integer
		  dim s as string
		  L = LenB(src)
		  for n=1 to L
		    v = AscB(MidB(src, n, 1))
		    s = s + RightB("00"+Hex(v),2)+separator
		  next
		  return LeftB(s, LenB(s)-LenB(separator))
		  
		  ' function suggested by: "charonn0"
		  
		  ' function explanation: ( from "charonn0" )
		  ' Here's one that I use whenever I need to compare the output of RB's MD5() function with a MD5 stored as hex (which is the most common representation)
		  
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
