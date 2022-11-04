xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 143;
 58.16100;101.19365;0.38685;,
 42.47891;94.02339;108.81886;,
 48.36036;53.57192;108.81886;,
 66.21369;45.80796;0.38685;,
 42.47891;94.02339;204.92476;,
 48.36036;53.57192;204.92476;,
 42.26778;37.54531;108.81886;,
 57.87162;23.86460;0.38685;,
 42.26778;37.54531;204.92476;,
 42.47891;94.02339;204.92476;,
 23.58560;114.78540;204.92476;,
 23.58560;67.61772;204.92476;,
 48.36036;53.57192;204.92476;,
 0.00179;128.75274;204.92476;,
 0.00179;67.61772;204.92476;,
 -23.58201;114.78540;204.92476;,
 -23.58201;67.61772;204.92476;,
 -42.47555;94.02339;204.92476;,
 -48.35677;53.57192;204.92476;,
 23.58560;23.19946;204.92476;,
 42.26778;37.54531;204.92476;,
 0.00179;20.44995;204.92476;,
 -23.58201;23.19946;204.92476;,
 -42.26417;37.54531;204.92476;,
 -42.47555;94.02339;204.92476;,
 -42.47555;94.02339;108.81886;,
 -48.35677;53.57192;108.81886;,
 -48.35677;53.57192;204.92476;,
 -58.15744;101.19365;0.38685;,
 -66.21014;45.80796;0.38685;,
 -42.26417;37.54531;108.81886;,
 -42.26417;37.54531;204.92476;,
 -57.86831;23.86460;0.38685;,
 -23.58201;114.78540;204.92476;,
 -23.58201;114.78540;108.81886;,
 -42.47555;94.02339;108.81886;,
 0.00179;128.75274;108.81886;,
 23.58560;114.78540;204.92476;,
 23.58560;114.78540;108.81886;,
 42.47891;94.02339;108.81886;,
 -32.28886;129.62066;0.38685;,
 -58.15744;101.19365;0.38685;,
 0.00179;148.74463;0.38685;,
 32.29245;129.62066;0.38685;,
 58.16100;101.19365;0.38685;,
 -42.26417;37.54531;108.81886;,
 -23.58201;23.19946;108.81886;,
 -23.58201;23.19946;204.92476;,
 0.00179;20.44995;108.81886;,
 23.58560;23.19946;108.81886;,
 23.58560;23.19946;204.92476;,
 42.26778;37.54531;108.81886;,
 -57.86831;23.86460;0.38685;,
 -32.28886;4.22236;0.38685;,
 0.00179;0.45806;0.38685;,
 32.29245;4.22236;0.38685;,
 57.87162;23.86460;0.38685;,
 -58.15744;101.19365;0.56322;,
 -32.28886;129.62066;0.56322;,
 -32.28886;65.03940;0.56322;,
 -66.21038;45.80796;0.56322;,
 0.00179;148.74463;0.56341;,
 0.00179;65.03940;0.56341;,
 32.29245;129.62066;0.56341;,
 32.29245;65.03940;0.56341;,
 58.16100;101.19365;0.56439;,
 66.21369;45.80796;0.56439;,
 -32.28886;4.22236;0.56322;,
 -57.86804;23.86460;0.56322;,
 0.00179;0.45806;0.56341;,
 32.29245;4.22236;0.56341;,
 57.87162;23.86460;0.56439;,
 -0.89332;354.79454;422.57613;,
 -0.89332;239.05450;395.66602;,
 29.51118;249.17388;370.62100;,
 15.69801;365.57549;412.52066;,
 42.10481;273.60367;310.15586;,
 22.57027;391.60220;388.25171;,
 29.51118;298.03384;249.68882;,
 15.69801;417.62803;363.98233;,
 -0.89332;308.15215;224.64331;,
 -0.89332;428.40860;353.92852;,
 -31.29759;298.03384;249.68882;,
 -17.48466;417.62803;363.98233;,
 -43.89145;273.60367;310.15586;,
 -24.35689;391.60220;388.25171;,
 -31.29759;249.17388;370.62100;,
 -17.48466;365.57549;412.52066;,
 -0.89332;239.05450;395.66602;,
 -0.89332;354.79454;422.57613;,
 -0.89332;164.23970;396.50606;,
 40.78984;164.23970;363.82120;,
 58.05562;164.23970;274.41465;,
 40.78984;164.23970;185.00812;,
 -0.89332;164.23970;147.97365;,
 -42.57645;164.23970;185.00812;,
 -59.84224;164.23970;274.41465;,
 -42.57645;164.24024;363.82100;,
 -0.89332;164.23970;396.50606;,
 -0.89332;51.89121;405.40562;,
 46.87478;51.89087;376.87335;,
 66.66088;51.89150;274.41465;,
 46.87478;51.89121;171.95714;,
 -0.89332;51.89121;129.51759;,
 -48.66140;51.89121;171.95714;,
 -68.44742;51.89150;274.41465;,
 -48.66140;51.89087;376.87335;,
 -0.89332;51.89121;405.40562;,
 -0.89332;-14.70203;396.61016;,
 26.25424;-17.01328;374.59952;,
 37.49921;-22.59441;291.59629;,
 26.25424;-28.17527;208.59351;,
 -0.89332;-30.48733;174.21378;,
 -28.04089;-28.17527;208.59351;,
 -39.28588;-22.59441;291.59629;,
 -28.04089;-17.01328;374.59952;,
 -0.89332;-14.70203;396.61016;,
 -0.89332;-123.64893;391.67872;,
 12.68059;-129.76939;376.79835;,
 18.30294;-144.54639;340.87520;,
 12.68059;-159.32317;304.95157;,
 -0.89332;-165.44422;290.07012;,
 -14.46722;-159.32317;304.95157;,
 -20.08960;-144.54639;340.87520;,
 -14.46722;-129.76939;376.79835;,
 -0.89332;-123.64893;391.67872;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;-247.17354;427.44527;,
 -0.89332;498.17579;502.53863;,
 -0.89332;354.79454;422.57613;,
 15.69801;365.57549;412.52066;,
 22.57027;391.60220;388.25171;,
 15.69801;417.62803;363.98233;,
 -0.89332;428.40860;353.92852;,
 -17.48466;417.62803;363.98233;,
 -24.35689;391.60220;388.25171;,
 -17.48466;365.57549;412.52066;;
 
 96;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;3,2,6,7;,
 4;2,5,8,6;,
 4;9,10,11,12;,
 4;10,13,14,11;,
 4;13,15,16,14;,
 4;15,17,18,16;,
 4;12,11,19,20;,
 4;11,14,21,19;,
 4;14,16,22,21;,
 4;16,18,23,22;,
 4;24,25,26,27;,
 4;25,28,29,26;,
 4;27,26,30,31;,
 4;26,29,32,30;,
 4;24,33,34,35;,
 4;33,13,36,34;,
 4;13,37,38,36;,
 4;37,4,39,38;,
 4;35,34,40,41;,
 4;34,36,42,40;,
 4;36,38,43,42;,
 4;38,39,44,43;,
 4;45,46,47,31;,
 4;46,48,21,47;,
 4;48,49,50,21;,
 4;49,51,8,50;,
 4;52,53,46,45;,
 4;53,54,48,46;,
 4;54,55,49,48;,
 4;55,56,51,49;,
 4;57,58,59,60;,
 4;58,61,62,59;,
 4;61,63,64,62;,
 4;63,65,66,64;,
 4;60,59,67,68;,
 4;59,62,69,67;,
 4;62,64,70,69;,
 4;64,66,71,70;,
 4;72,73,74,75;,
 4;75,74,76,77;,
 4;77,76,78,79;,
 4;79,78,80,81;,
 4;81,80,82,83;,
 4;83,82,84,85;,
 4;85,84,86,87;,
 4;87,86,88,89;,
 4;73,90,91,74;,
 4;74,91,92,76;,
 4;76,92,93,78;,
 4;78,93,94,80;,
 4;80,94,95,82;,
 4;82,95,96,84;,
 4;84,96,97,86;,
 4;86,97,98,88;,
 4;90,99,100,91;,
 4;91,100,101,92;,
 4;92,101,102,93;,
 4;93,102,103,94;,
 4;94,103,104,95;,
 4;95,104,105,96;,
 4;96,105,106,97;,
 4;97,106,107,98;,
 4;99,108,109,100;,
 4;100,109,110,101;,
 4;101,110,111,102;,
 4;102,111,112,103;,
 4;103,112,113,104;,
 4;104,113,114,105;,
 4;105,114,115,106;,
 4;106,115,116,107;,
 4;108,117,118,109;,
 4;109,118,119,110;,
 4;110,119,120,111;,
 4;111,120,121,112;,
 4;112,121,122,113;,
 4;113,122,123,114;,
 4;114,123,124,115;,
 4;115,124,125,116;,
 3;117,126,118;,
 3;118,127,119;,
 3;119,128,120;,
 3;120,129,121;,
 3;121,130,122;,
 3;122,131,123;,
 3;123,132,124;,
 3;124,133,125;,
 3;134,135,136;,
 3;134,136,137;,
 3;134,137,138;,
 3;134,138,139;,
 3;134,139,140;,
 3;134,140,141;,
 3;134,141,142;,
 3;134,142,135;;
 
 MeshMaterialList {
  5;
  96;
  1,
  1,
  4,
  2,
  1,
  1,
  1,
  1,
  4,
  4,
  4,
  4,
  1,
  1,
  2,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  1,
  1,
  1,
  1,
  4,
  4,
  4,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.194400;0.304000;0.460800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.009600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  114;
  0.892947;0.421881;0.157041;,
  0.901360;0.425841;0.078807;,
  0.979780;-0.107114;0.168990;,
  0.990463;-0.108563;0.084835;,
  0.788238;-0.586146;0.187385;,
  0.798823;-0.594149;0.094171;,
  0.904177;0.427157;0.000000;,
  0.000000;0.000000;1.000000;,
  0.994016;-0.109231;-0.000000;,
  0.802327;-0.596885;-0.000000;,
  -0.901360;0.425841;0.078806;,
  -0.892947;0.421881;0.157040;,
  -0.990463;-0.108564;0.084835;,
  -0.979780;-0.107113;0.168990;,
  -0.798823;-0.594149;0.094172;,
  -0.788239;-0.586145;0.187386;,
  -0.629702;0.772942;0.077692;,
  -0.508004;0.857763;0.078583;,
  0.629704;0.772941;0.077693;,
  -0.624020;0.765903;0.154895;,
  -0.503287;0.849797;0.156679;,
  0.624021;0.765902;0.154896;,
  -0.374232;-0.922463;0.094937;,
  -0.000000;-0.995847;0.091047;,
  0.374232;-0.922463;0.094937;,
  -0.369108;-0.909987;0.188898;,
  -0.000000;-0.983425;0.181318;,
  0.369110;-0.909987;0.188898;,
  0.000000;0.000000;-1.000000;,
  0.000003;0.000000;-1.000000;,
  0.000017;0.000001;-1.000000;,
  0.000019;-0.000002;-1.000000;,
  0.000021;-0.000005;-1.000000;,
  0.000035;0.000002;-1.000000;,
  0.000038;-0.000004;-1.000000;,
  0.000041;-0.000010;-1.000000;,
  0.641797;-0.281604;0.713299;,
  0.851591;-0.154909;0.500796;,
  0.990007;0.107112;0.091721;,
  0.856600;0.449967;-0.252520;,
  0.650061;0.631289;-0.422959;,
  -0.856600;0.449967;-0.252520;,
  -0.990007;0.107111;0.091721;,
  -0.851591;-0.154910;0.500796;,
  0.631046;-0.087019;0.770849;,
  0.850030;-0.018607;0.526406;,
  0.990885;0.124916;0.050428;,
  0.855607;0.349939;-0.381417;,
  0.647530;0.470513;-0.599435;,
  -0.855607;0.349939;-0.381417;,
  -0.990885;0.124917;0.050428;,
  -0.850030;-0.018607;0.526405;,
  0.594631;0.055781;0.802061;,
  0.841174;0.074203;0.535650;,
  0.994212;0.106646;0.013028;,
  0.861621;0.197756;-0.467441;,
  0.654747;0.248391;-0.713868;,
  -0.861621;0.197756;-0.467441;,
  -0.994212;0.106647;0.013028;,
  -0.841174;0.074204;0.535649;,
  0.567935;-0.022695;0.822760;,
  0.835136;-0.075537;0.544832;,
  0.991267;-0.131722;0.006288;,
  0.876043;-0.152171;-0.457594;,
  0.691317;-0.147789;-0.707275;,
  -0.876043;-0.152171;-0.457594;,
  -0.991267;-0.131721;0.006288;,
  -0.835137;-0.075537;0.544831;,
  0.622373;-0.098125;0.776545;,
  0.848856;-0.160704;0.503605;,
  0.970690;-0.239261;0.022716;,
  0.860330;-0.363505;-0.357348;,
  0.701921;-0.429083;-0.568502;,
  -0.860330;-0.363504;-0.357348;,
  -0.970690;-0.239260;0.022716;,
  -0.848856;-0.160704;0.503605;,
  0.726156;0.063354;0.684605;,
  0.895687;-0.003182;0.444674;,
  0.989104;-0.140148;0.045085;,
  0.879798;-0.389633;-0.272288;,
  0.713433;-0.540420;-0.446050;,
  -0.879798;-0.389633;-0.272288;,
  -0.989104;-0.140148;0.045085;,
  -0.895687;-0.003182;0.444674;,
  0.973429;-0.204045;0.103933;,
  0.944876;-0.063130;0.321284;,
  -0.904177;0.427158;0.000000;,
  -0.994016;-0.109234;0.000000;,
  -0.802327;-0.596885;0.000000;,
  -0.631579;0.775311;0.000000;,
  -0.509580;0.860424;0.000000;,
  0.509579;0.860424;0.000000;,
  0.631581;0.775309;0.000000;,
  0.508004;0.857763;0.078582;,
  0.503287;0.849797;0.156679;,
  -0.375983;-0.926627;0.000000;,
  -0.000000;-1.000000;0.000000;,
  0.375982;-0.926627;-0.000000;,
  -0.650062;0.631289;-0.422959;,
  -0.647532;0.470513;-0.599434;,
  -0.631048;-0.087019;0.770848;,
  -0.641797;-0.281604;0.713299;,
  -0.654748;0.248391;-0.713867;,
  -0.594633;0.055781;0.802060;,
  -0.691318;-0.147789;-0.707275;,
  -0.567936;-0.022694;0.822760;,
  -0.701921;-0.429083;-0.568502;,
  -0.622373;-0.098125;0.776545;,
  -0.713433;-0.540420;-0.446049;,
  -0.726156;0.063353;0.684605;,
  -0.973429;-0.204045;0.103932;,
  0.645738;0.691182;-0.324485;,
  -0.944870;0.324922;-0.040573;,
  -0.645790;-0.371884;0.666827;;
  96;
  4;0,1,3,2;,
  4;1,6,8,3;,
  4;2,3,5,4;,
  4;3,8,9,5;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;86,10,12,87;,
  4;10,11,13,12;,
  4;87,12,14,88;,
  4;12,13,15,14;,
  4;86,89,16,10;,
  4;89,90,17,16;,
  4;91,92,18,93;,
  4;92,6,1,18;,
  4;10,16,19,11;,
  4;16,17,20,19;,
  4;93,18,21,94;,
  4;18,1,0,21;,
  4;14,22,95,88;,
  4;22,23,96,95;,
  4;23,24,97,96;,
  4;24,5,9,97;,
  4;15,25,22,14;,
  4;25,26,23,22;,
  4;26,27,24,23;,
  4;27,4,5,24;,
  4;28,29,29,28;,
  4;29,29,29,29;,
  4;29,30,31,29;,
  4;30,33,34,31;,
  4;28,29,29,28;,
  4;29,29,29,29;,
  4;29,31,32,29;,
  4;31,34,35,32;,
  4;36,44,45,37;,
  4;37,45,46,38;,
  4;38,46,47,39;,
  4;39,47,48,40;,
  4;98,99,49,41;,
  4;41,49,50,42;,
  4;42,50,51,43;,
  4;43,51,100,101;,
  4;44,52,53,45;,
  4;45,53,54,46;,
  4;46,54,55,47;,
  4;47,55,56,48;,
  4;99,102,57,49;,
  4;49,57,58,50;,
  4;50,58,59,51;,
  4;51,59,103,100;,
  4;52,60,61,53;,
  4;53,61,62,54;,
  4;54,62,63,55;,
  4;55,63,64,56;,
  4;102,104,65,57;,
  4;57,65,66,58;,
  4;58,66,67,59;,
  4;59,67,105,103;,
  4;60,68,69,61;,
  4;61,69,70,62;,
  4;62,70,71,63;,
  4;63,71,72,64;,
  4;104,106,73,65;,
  4;65,73,74,66;,
  4;66,74,75,67;,
  4;67,75,107,105;,
  4;68,76,77,69;,
  4;69,77,78,70;,
  4;70,78,79,71;,
  4;71,79,80,72;,
  4;106,108,81,73;,
  4;73,81,82,74;,
  4;74,82,83,75;,
  4;75,83,109,107;,
  3;76,84,77;,
  3;77,84,78;,
  3;78,84,79;,
  3;79,84,80;,
  3;108,110,81;,
  3;81,110,82;,
  3;82,110,83;,
  3;83,110,109;,
  3;85,36,37;,
  3;85,37,38;,
  3;85,38,39;,
  3;111,39,40;,
  3;112,98,41;,
  3;112,41,42;,
  3;112,42,43;,
  3;113,43,101;;
 }
 MeshTextureCoords {
  143;
  0.333330;0.000000;,
  0.666670;0.000000;,
  0.666670;0.500000;,
  0.333330;0.500000;,
  1.000000;0.000000;,
  1.000000;0.500000;,
  0.666670;1.000000;,
  0.333330;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.250000;0.000000;,
  0.250000;0.500000;,
  0.000000;0.500000;,
  0.500000;0.000000;,
  0.500000;0.500000;,
  0.750000;0.000000;,
  0.750000;0.500000;,
  1.000000;0.000000;,
  1.000000;0.500000;,
  0.250000;1.000000;,
  0.000000;1.000000;,
  0.500000;1.000000;,
  0.750000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.333330;0.000000;,
  0.333330;0.500000;,
  0.000000;0.500000;,
  0.666670;0.000000;,
  0.666670;0.500000;,
  0.333330;1.000000;,
  0.000000;1.000000;,
  0.666670;1.000000;,
  0.250000;0.000000;,
  0.250000;0.333330;,
  0.000000;0.333330;,
  0.500000;0.333330;,
  0.750000;0.000000;,
  0.750000;0.333330;,
  1.000000;0.333330;,
  0.250000;0.666670;,
  0.000000;0.666670;,
  0.500000;0.666670;,
  0.750000;0.666670;,
  1.000000;0.666670;,
  0.000000;0.666670;,
  0.250000;0.666670;,
  0.250000;1.000000;,
  0.500000;0.666670;,
  0.750000;0.666670;,
  0.750000;1.000000;,
  1.000000;0.666670;,
  0.000000;0.333330;,
  0.250000;0.333330;,
  0.500000;0.333330;,
  0.750000;0.333330;,
  1.000000;0.333330;,
  0.000000;0.000000;,
  0.250000;0.000000;,
  0.250000;0.500000;,
  0.000000;0.500000;,
  0.500000;0.000000;,
  0.500000;0.500000;,
  0.750000;0.000000;,
  0.750000;0.500000;,
  1.000000;0.000000;,
  1.000000;0.500000;,
  0.250000;1.000000;,
  0.000000;1.000000;,
  0.500000;1.000000;,
  0.750000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.833330;,
  0.125000;0.833330;,
  0.125000;1.000000;,
  0.250000;0.833330;,
  0.250000;1.000000;,
  0.375000;0.833330;,
  0.375000;1.000000;,
  0.500000;0.833330;,
  0.500000;1.000000;,
  0.625000;0.833330;,
  0.625000;1.000000;,
  0.750000;0.833330;,
  0.750000;1.000000;,
  0.875000;0.833330;,
  0.875000;1.000000;,
  1.000000;0.833330;,
  1.000000;1.000000;,
  0.000000;0.666670;,
  0.125000;0.666670;,
  0.250000;0.666670;,
  0.375000;0.666670;,
  0.500000;0.666670;,
  0.625000;0.666670;,
  0.750000;0.666670;,
  0.875000;0.666670;,
  1.000000;0.666670;,
  0.000000;0.500000;,
  0.125000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.333330;,
  0.125000;0.333330;,
  0.250000;0.333330;,
  0.375000;0.333330;,
  0.500000;0.333330;,
  0.625000;0.333330;,
  0.750000;0.333330;,
  0.875000;0.333330;,
  1.000000;0.333330;,
  0.000000;0.166670;,
  0.125000;0.166670;,
  0.250000;0.166670;,
  0.375000;0.166670;,
  0.500000;0.166670;,
  0.625000;0.166670;,
  0.750000;0.166670;,
  0.875000;0.166670;,
  1.000000;0.166670;,
  0.062500;0.000000;,
  0.125000;0.000000;,
  0.187500;0.000000;,
  0.250000;0.000000;,
  0.312500;0.000000;,
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
