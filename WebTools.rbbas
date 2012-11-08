#tag Module
Protected Module WebTools
	#tag Method, Flags = &h1
		Protected Function BuildLinks(InputString As String, Target As String = "_blank") As String
		  ' this function accepts a string and will search for "http://" links in it. if there is, then replace it with a html <a></a> tag fully functional.
		  ' this function is build by swort from the realsoftware user forums located at: http://forums.realsoftware.com/viewtopic.php?f=23&t=37332
		  
		  Dim temp As String
		  Dim wordarray(-1) As String
		  
		  if InputString <> "" Then
		    
		    wordarray = InputString.Split( " ")
		    For each word as String in wordarray 
		      ' look for http:// or www. in the word, if there is replace it.
		      if word.InStr(0, "http://" ) > 0 Then
		        'replace the text with a link, and a custom target append back to the string
		        temp = temp + "<a href='" + word + "' target='" + Target +"'>" + word.Replace("http://", "") + "</a> "
		        
		      elseif word.InStr(0, "www.") > 0 Then
		        'replace the text with a link, and a custom target append back to string
		        temp = temp + "<a href='http://" + word + "' target='" + Target +"'>" + word.Replace("http://", "") + "</a> "
		        
		      else
		        
		        'get the word from the arry, put back in to the string.
		        temp = temp + word +" "
		        
		      end if
		      
		    Next
		    
		  end if
		  
		  Return temp
		End Function
	#tag EndMethod


	#tag Note, Name = PLEASE READ FIRST
		Initial release
		
		
	#tag EndNote


	#tag Constant, Name = Version, Type = String, Dynamic = False, Default = \"0.1.0", Scope = Protected
	#tag EndConstant


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
