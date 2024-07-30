<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Redirecting</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel="stylesheet" href="load.css">

  <script>
    setTimeout(function() {
      window.location.href = "index2.jsp"; 
    }, 3000); // Delay in milliseconds (e.g., 2000 = 2 seconds)
  </script>
  
  <style>
      body {
	background: #000;
}
svg {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	height: 150px;
	width: 150px;
}
  </style>
  
</head>
<body>
<!-- partial:index.partial.html -->


<svg viewBox="0 0 100 100">
	<g fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="6">
		<!-- left line -->
		<path d="M 21 40 V 59">
			<animateTransform
      attributeName="transform"
      attributeType="XML"
      type="rotate"
      values="0 21 59; 180 21 59"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<!-- right line -->
		<path d="M 79 40 V 59">
			<animateTransform
      attributeName="transform"
      attributeType="XML"
      type="rotate"
      values="0 79 59; -180 79 59"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<!-- top line -->
		<path d="M 50 21 V 40">
			<animate
      attributeName="d"
      values="M 50 21 V 40; M 50 59 V 40"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<!-- btm line -->
		<path d="M 50 60 V 79">
			<animate
      attributeName="d"
      values="M 50 60 V 79; M 50 98 V 79"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<!-- top box -->
		<path d="M 50 21 L 79 40 L 50 60 L 21 40 Z">
		<animate
      attributeName="stroke"
      values="rgba(255,255,255,1); rgba(100,100,100,0)"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<!-- mid box -->
		<path d="M 50 40 L 79 59 L 50 79 L 21 59 Z"/>
		<!-- btm box -->
		<path d="M 50 59 L 79 78 L 50 98 L 21 78 Z">
		<animate
      attributeName="stroke"
      values="rgba(100,100,100,0); rgba(255,255,255,1)"
      dur="2s"
      repeatCount="indefinite" />
		</path>
		<animateTransform
      attributeName="transform"
      attributeType="XML"
      type="translate"
      values="0 0; 0 -19"
      dur="2s"
      repeatCount="indefinite" />
	</g>
</svg>

<!-- partial -->
  
</body>
</html>
