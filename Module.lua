return function(Table)
	print("\n[[ EXUNYS TABLE DUMP ]] @ "..tostring(os.date()).."\n")
	table.foreach(Table, function(i, v)
		print("\n"..string.rep("=", 25).." REACHED: 1 "..string.rep("=", 25).."\n")
		print("Index: "..tostring(i).."	Value: "..tostring(v))
		
		if type(v) == "table" then
			print(v)
			print("\n"..string.rep("=", 25).." STACK: 2 "..string.rep("=", 25).."\n")
			table.foreach(v, function(i2, v2)
				print("Index: "..tostring(i2).."	Value: "..tostring(v2))

				if type(v2) == "table" then
					print(v2)
					print("\n"..string.rep("=", 25).." STACK: 3 "..string.rep("=", 25).."\n")
					table.foreach(v2, function(i3, v3)
						print("Index: "..tostring(i3).."	Value: "..tostring(v3))

						if type(v3) == "table" then
							print(v3)
							print("\n"..string.rep("=", 25).." STACK: 4 "..string.rep("=", 25).."\n")
							table.foreach(v3, function(i4, v4)
								print("Index: "..tostring(i4).."	Value: "..tostring(v4))

								if type(v4) == "table" then
									print(v4)
									print("\n"..string.rep("=", 25).." STACK: 5 "..string.rep("=", 25).."\n")
									table.foreach(v4, function(i5, v5)
										print("Index: "..tostring(i5).."	Value: "..tostring(v5))

										if type(v5) == "table" then
											print(v5)
											print("\n"..string.rep("=", 25).." STACK: 6 "..string.rep("=", 25).."\n")
											table.foreach(v5, function(i6, v6)
												print("Index: "..tostring(i6).."	Value: "..tostring(v6))

												if type(v6) == "table" then
													print(v6)
													print("\n"..string.rep("=", 25).." STACK: 7 "..string.rep("=", 25).."\n")
													table.foreach(v6, function(i7, v7)
														print("Index: "..tostring(i7).."	Value: "..tostring(v7))

														if type(v7) == "table" then
															print(v7)
															print("\n"..string.rep("=", 25).." STACK: 8 "..string.rep("=", 25).."\n")
															table.foreach(v7, function(i8, v8)
																print("Index: "..tostring(i8).."	Value: "..tostring(v8))

																if type(v8) == "table" then
																	print(v8)
																	print("\n"..string.rep("=", 25).." STACK: 9 (CAP REACHED) "..string.rep("=", 25).."\n")
																	for i9, v9 in next, v8 do
																		print("Index: "..tostring(i9).."	Value: "..tostring(v9))
																	end
																end
															end)
														end
													end)
												end
											end)
										end
									end)
								end
							end)
						end
					end)
				end
			end)
		end
	end)
end
