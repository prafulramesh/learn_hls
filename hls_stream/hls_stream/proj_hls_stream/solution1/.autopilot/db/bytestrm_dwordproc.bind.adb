<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>bytestrm_dwordproc</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>strm_out_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>strm_out.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>strm_in_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>strm_in.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>strm_len</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>strm_len</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>12</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>strm_len_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>strm_len</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>35</item>
					<item>36</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>bytes_out_len_loc_ch</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>14</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>38</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>strm_len_channel2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>39</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>strm_len_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>40</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>dwordstrm_in_V</name>
						<fileName>bytestrm_dwordproc.cpp</fileName>
						<fileDirectory>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</fileDirectory>
						<lineNumber>113</lineNumber>
						<contextFuncName>bytestrm_dwordproc</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>bytestrm_dwordproc.cpp</first>
											<second>bytestrm_dwordproc</second>
										</first>
										<second>113</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>dwordstrm_in.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>41</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>dwordstrm_out_V</name>
						<fileName>bytestrm_dwordproc.cpp</fileName>
						<fileDirectory>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</fileDirectory>
						<lineNumber>114</lineNumber>
						<contextFuncName>bytestrm_dwordproc</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>bytestrm_dwordproc.cpp</first>
											<second>bytestrm_dwordproc</second>
										</first>
										<second>114</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>dwordstrm_out.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>42</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>44</item>
					<item>45</item>
					<item>46</item>
					<item>47</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>28</id>
						<name>dwords_in_len_cast_l</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>14</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>49</item>
					<item>50</item>
					<item>51</item>
					<item>301</item>
					<item>303</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>29</id>
						<name></name>
						<fileName>bytestrm_dwordproc.cpp</fileName>
						<fileDirectory>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</fileDirectory>
						<lineNumber>124</lineNumber>
						<contextFuncName>bytestrm_dwordproc</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>bytestrm_dwordproc.cpp</first>
											<second>bytestrm_dwordproc</second>
										</first>
										<second>124</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>56</item>
					<item>302</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>30</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>58</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
					<item>299</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>31</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>63</item>
					<item>64</item>
					<item>65</item>
					<item>66</item>
					<item>298</item>
					<item>300</item>
					<item>304</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name></name>
						<fileName>bytestrm_dwordproc.cpp</fileName>
						<fileDirectory>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</fileDirectory>
						<lineNumber>131</lineNumber>
						<contextFuncName>bytestrm_dwordproc</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/vkchcp0030/Documents/learn_hls/hls_stream/hls_stream</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>bytestrm_dwordproc.cpp</first>
											<second>bytestrm_dwordproc</second>
										</first>
										<second>131</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>37</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_17">
				<Value>
					<Obj>
						<type>2</type>
						<id>43</id>
						<name>bytestrm_dwordproc_e</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:bytestrm_dwordproc.e&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_18">
				<Value>
					<Obj>
						<type>2</type>
						<id>48</id>
						<name>Block_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>14</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block__proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>52</id>
						<name>strm_bytes2words</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:strm_bytes2words&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>57</id>
						<name>decimate_strm</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:decimate_strm&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>62</id>
						<name>strm_words2bytes</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:strm_words2bytes&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_22">
				<Obj>
					<type>3</type>
					<id>33</id>
					<name>bytestrm_dwordproc</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>12</count>
					<item_version>0</item_version>
					<item>4</item>
					<item>5</item>
					<item>6</item>
					<item>7</item>
					<item>13</item>
					<item>16</item>
					<item>25</item>
					<item>28</item>
					<item>29</item>
					<item>30</item>
					<item>31</item>
					<item>32</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>32</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_23">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>4</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>5</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>45</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>46</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>49</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>50</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>51</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>54</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>55</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>56</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>58</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>30</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>59</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>30</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>60</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>30</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>30</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>64</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>298</id>
				<edge_type>4</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>299</id>
				<edge_type>4</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>30</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>300</id>
				<edge_type>4</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>301</id>
				<edge_type>4</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>302</id>
				<edge_type>4</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>303</id>
				<edge_type>4</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>304</id>
				<edge_type>4</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>31</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_55">
			<mId>1</mId>
			<mTag>bytestrm_dwordproc</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2978</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_56">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_57">
						<type>0</type>
						<name>bytestrm_dwordproc_e_U0</name>
						<ssdmobj_id>25</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>3</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_58">
								<port class_id="29" tracking_level="1" version="0" object_id="_59">
									<name>strm_len</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_60">
									<type>0</type>
									<name>bytestrm_dwordproc_e_U0</name>
									<ssdmobj_id>25</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_61">
								<port class_id_reference="29" object_id="_62">
									<name>strm_len_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_60"></inst>
							</item>
							<item class_id_reference="28" object_id="_63">
								<port class_id_reference="29" object_id="_64">
									<name>strm_len_out1</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_60"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_65">
						<type>0</type>
						<name>Block_proc_U0</name>
						<ssdmobj_id>28</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_66">
								<port class_id_reference="29" object_id="_67">
									<name>strm_len</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_68">
									<type>0</type>
									<name>Block_proc_U0</name>
									<ssdmobj_id>28</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_69">
								<port class_id_reference="29" object_id="_70">
									<name>bytes_out_len_out_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
							<item class_id_reference="28" object_id="_71">
								<port class_id_reference="29" object_id="_72">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_73">
						<type>0</type>
						<name>strm_bytes2words_U0</name>
						<ssdmobj_id>29</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_74">
								<port class_id_reference="29" object_id="_75">
									<name>words_out_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_76">
									<type>0</type>
									<name>strm_bytes2words_U0</name>
									<ssdmobj_id>29</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_77">
								<port class_id_reference="29" object_id="_78">
									<name>bytes_in_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_76"></inst>
							</item>
							<item class_id_reference="28" object_id="_79">
								<port class_id_reference="29" object_id="_80">
									<name>bytestrm_len</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_76"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_81">
						<type>0</type>
						<name>decimate_strm_U0</name>
						<ssdmobj_id>30</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_82">
								<port class_id_reference="29" object_id="_83">
									<name>strm_out_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_84">
									<type>0</type>
									<name>decimate_strm_U0</name>
									<ssdmobj_id>30</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_85">
								<port class_id_reference="29" object_id="_86">
									<name>strm_in_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_84"></inst>
							</item>
							<item class_id_reference="28" object_id="_87">
								<port class_id_reference="29" object_id="_88">
									<name>strm_len</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_84"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_89">
						<type>0</type>
						<name>strm_words2bytes_U0</name>
						<ssdmobj_id>31</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_90">
								<port class_id_reference="29" object_id="_91">
									<name>bytes_out_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_92">
									<type>0</type>
									<name>strm_words2bytes_U0</name>
									<ssdmobj_id>31</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_93">
								<port class_id_reference="29" object_id="_94">
									<name>words_in_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_92"></inst>
							</item>
							<item class_id_reference="28" object_id="_95">
								<port class_id_reference="29" object_id="_96">
									<name>bytes_out_len_loc</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_92"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_97">
						<type>1</type>
						<name>strm_len_channel</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>16</bitwidth>
						<source class_id_reference="28" object_id="_98">
							<port class_id_reference="29" object_id="_99">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_60"></inst>
						</source>
						<sink class_id_reference="28" object_id="_100">
							<port class_id_reference="29" object_id="_101">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_76"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_102">
						<type>1</type>
						<name>strm_len_channel2</name>
						<ssdmobj_id>6</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>16</bitwidth>
						<source class_id_reference="28" object_id="_103">
							<port class_id_reference="29" object_id="_104">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_60"></inst>
						</source>
						<sink class_id_reference="28" object_id="_105">
							<port class_id_reference="29" object_id="_106">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_107">
						<type>1</type>
						<name>bytes_out_len_loc_ch</name>
						<ssdmobj_id>5</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>14</bitwidth>
						<source class_id_reference="28" object_id="_108">
							<port class_id_reference="29" object_id="_109">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</source>
						<sink class_id_reference="28" object_id="_110">
							<port class_id_reference="29" object_id="_111">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_92"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_112">
						<type>1</type>
						<name>dwords_in_len_cast_l</name>
						<ssdmobj_id>28</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>14</bitwidth>
						<source class_id_reference="28" object_id="_113">
							<port class_id_reference="29" object_id="_114">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</source>
						<sink class_id_reference="28" object_id="_115">
							<port class_id_reference="29" object_id="_116">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_84"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_117">
						<type>1</type>
						<name>dwordstrm_in_V</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_118">
							<port class_id_reference="29" object_id="_119">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_76"></inst>
						</source>
						<sink class_id_reference="28" object_id="_120">
							<port class_id_reference="29" object_id="_121">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_84"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_122">
						<type>1</type>
						<name>dwordstrm_out_V</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_123">
							<port class_id_reference="29" object_id="_124">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_84"></inst>
						</source>
						<sink class_id_reference="28" object_id="_125">
							<port class_id_reference="29" object_id="_126">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_92"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_127">
		<states class_id="35" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_128">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>7</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_129">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_130">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_131">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_132">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_133">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_134">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_135">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_136">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_137">
						<id>29</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_138">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_139">
						<id>29</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_140">
				<id>4</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_141">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_142">
						<id>30</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_143">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_144">
						<id>30</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_145">
				<id>6</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_146">
						<id>31</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_147">
				<id>7</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_148">
						<id>31</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_149">
				<id>8</id>
				<operations>
					<count>18</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_150">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_151">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_152">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_153">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_154">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_155">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_156">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_157">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_158">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_159">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_160">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_161">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_162">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_163">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_164">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_165">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_166">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_167">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_168">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_169">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_170">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_171">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_172">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_173">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>5</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_174">
				<inState>7</inState>
				<outState>8</outState>
				<condition>
					<id>6</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>29</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>30</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>31</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>32</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>33</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>7</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_175">
			<region_name>bytestrm_dwordproc</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</basic_blocks>
			<nodes>
				<count>29</count>
				<item_version>0</item_version>
				<item>4</item>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>11</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>132</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>136</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>140</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>144</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>148</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>152</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>158</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>30</item>
				<item>30</item>
			</second>
		</item>
		<item>
			<first>165</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>31</item>
				<item>31</item>
			</second>
		</item>
		<item>
			<first>173</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>29</item>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>181</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>188</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>bytes_out_len_loc_ch_fu_132</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>dwordstrm_in_V_fu_144</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>dwordstrm_out_V_fu_148</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>strm_len_channel2_fu_136</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>strm_len_channel_fu_140</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>5</count>
		<item_version>0</item_version>
		<item>
			<first>StgValue_15_bytestrm_dwordproc_e_fu_188</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>dwords_in_len_cast_l_Block_proc_fu_181</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>grp_decimate_strm_fu_158</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>30</item>
				<item>30</item>
			</second>
		</item>
		<item>
			<first>grp_strm_bytes2words_fu_173</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>29</item>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>grp_strm_words2bytes_fu_165</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>31</item>
				<item>31</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>1</count>
		<item_version>0</item_version>
		<item>
			<first>strm_len_read_read_fu_152</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>6</count>
		<item_version>0</item_version>
		<item>
			<first>196</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>202</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>208</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>214</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>226</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>6</count>
		<item_version>0</item_version>
		<item>
			<first>bytes_out_len_loc_ch_reg_196</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>dwords_in_len_cast_l_reg_226</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>dwordstrm_in_V_reg_214</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>dwordstrm_out_V_reg_220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>strm_len_channel2_reg_202</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>strm_len_channel_reg_208</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="60" tracking_level="0" version="0">
			<first>strm_in_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>29</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>strm_len</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>4</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>strm_out_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>31</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>6</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>5</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>6</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>7</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>13</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>16</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>28</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>
