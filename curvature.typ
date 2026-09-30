= Curvature
=== Curvature in Angle Perspective(Scalar)
#align(center)[#image("curvature - claudi.png", width: 80%)]

Consider two circles with r = 1 and r = 100. The circle with r = 1 has the larger curvature. A driver moving at a constant speed along the circle with r = 100 feels a gentle turn, whereas a driver on the circle with r = 1 feels a very sharp one.

=== Curvature in Vector Perspective

The curvature is the rate of change unit tangent with respect to arc length. Consider a parametric curve in 2D: 
$ bold(r)(s) = vec(x(s), y(s), delim: "[") -> (d bold(r))/(d s) = vec((d x)/(d s), (d y)/(d s), delim: "[") $

This is the unit tangent vector:

$ bold(T) = (d bold(r))/(d s) $

The curvature is as follows:

$ kappa = norm((d bold(T))/(d s)) $

Are the two perspectives same? Yes.

$ bold(T) = vec(cos theta, sin theta, delim: "[") $

$bold(T)$ is the unit tangent. Differentiate with respect to $s$:

$ (d bold(T))/(d s) = vec(-sin theta, cos theta, delim: "[") (d theta)/(d s) $

$ kappa &= norm((d bold(T))/(d s)) 
&=norm(vec(-sin theta, cos theta, delim: "[") (d theta)/(d s)) = abs((d theta)/(d s)) $

The magnitude of a vector $vec(-sin theta, cos theta, delim: "[")$ is 1.

=== Curvature Formula

Curvature is not limited to circles. It is defined for any smooth curve, which we can describe parametrically. For example, a circle of radius $r$ can be parametrized by $t$ as $x(t)=r cos t$ and $y(t)=r sin t$ where $0 <= t <= 2 pi$. Let us now derive the curvature formula for a general parametric curve $(x(t), y(t))$.

$ kappa = (d theta)/(d s) = (d theta\/d t)/(d s\/d t) $

=== Find denominator: $d s\/d t$

$ (d s)/(d t) = sqrt(((d x)/(d t))^2+((d y)/(d t))^2) $

$ (d x)/(d t) =x' wide (d y)/(d t) = y' $ 
$ (d s)/(d t) = sqrt(x'^2+y'^2) $

=== Find numerator: $d theta\/d t$
$ tan theta = (d y)/(d x) = (d y\/d t)/(d x\/d t) = (sin theta)/(cos theta) $

Use $tan theta = (d y)/(d x)$
$ d/(d t) tan theta &= d/(d t) (d y\/d t)/(d x\/d t) = d/(d t) y'/x' = (y''x' - y'x'')/(x'^2) $

Use $tan theta = sin theta\/cos theta$:\
$ d/(d t) tan theta &= d/(d t) (sin theta)/(cos theta) (d theta)/(d t)\
&=(cos theta dot cos theta - sin theta dot (-sin theta))/(cos^2 theta)(d theta)/(d t)\
&=1/(cos^2 theta) (d theta)/(d t)\
&= sec^2 theta (d theta)/(d t) $

Equate two results of $d/(d t) tan theta$: 

$ sec^2 theta (d theta)/(d t) = (y''x' - y'x'')/(x'^2) $

$ (d theta)/(d t) &=1/(sec^2 theta ) (y''x' - y'x'')/(x'^2)\
&=1/(1 + tan^2 theta ) (y''x' - y'x'')/(x'^2)\
&=1/(1 + (y'\/x')^2 ) (y''x' - y'x'')/(x'^2)\
&=x'^2/(x'^2 + y'^2) (y''x' - y'x'')/(x'^2)\
&=(y''x' - y'x'')/(x'^2 + y'^2) \
 $

Put $(d theta)/(d t)=(y''x' - y'x'')/(x'^2)$ and $(d s)/(d t)= sqrt(x'^2+y'^2)$ into curvature formula, $kappa = (d theta\/d t)/(d s\/d t)$

$ kappa = (d theta\/d t)/(d s\/d t)&=(y''x' - y'x'')/(x'^2 + y'^2) dot 1/((x'^2+y'^2)^(1/2)) \
&= (y''x' - y'x'')/(x'^2 + y'^2)^(3/2) $


=== Curvature in Polar Coordinate:

$ kappa &= (y''x' - y'x'')/(x'^2 + y'^2)^(3/2) $

$ x=r_theta cos theta\
y=r_theta sin theta\
x' = (d x)/(d theta)=(d r_theta)/(d theta) cos theta+r_theta d/(d theta) cos theta=r'_theta cos theta - r_theta sin theta\
y' = (d y)/(d theta)=(d r_theta)/(d theta) sin theta+r_theta d/(d theta) sin theta=r'_theta sin theta+r_theta cos theta $

$ x'' &= d/(d theta)(r'_theta cos theta - r_theta sin theta)\
&=d/(d theta)r'_theta cos theta - d/(d theta)r_theta sin theta\
&=r''_theta cos theta - r'_theta sin theta - r'_theta sin theta - r_theta cos theta\
&=r''_theta cos theta-2 r'_theta sin theta- r_theta cos theta $

$ y'' &= d/(d theta)(r'_theta sin theta+r_theta cos theta)\
&=d/(d theta)r'_theta sin theta+d/(d theta)r_theta cos theta\
&=r''_theta sin theta + r'_theta cos theta + r'_theta cos theta - r_theta sin theta\
&=r''_theta sin theta + 2r'_theta cos theta - r_theta sin theta $

Numerator:
$ y''x' - y'x''&=(r''_theta sin theta + 2r'_theta cos theta - r_theta sin theta)(r'_theta cos theta - r_theta sin theta)\ &-(r'_theta sin theta+r_theta cos theta)(r''_theta cos theta-2 r'_theta sin theta- r_theta cos theta)
$

Step A. expand the first parenthesis

$(r'' sin theta + 2r' cos theta - r sin theta) dot (r' cos theta - r sin theta)$

1. $r''$ : $r'' r' sin theta cos theta - r'' r sin^2 theta$
2. $r'$ : $2r'^2 cos^2 theta - 2r' r sin theta cos theta$
3. $r$ : $-r r' sin theta cos theta + r^2 sin^2 theta$

Step B. expand second parenthesis:

$(r' sin theta + r cos theta) dot (r'' cos theta - 2r' sin theta - r cos theta)$
1. $r''$ : $r' r'' sin theta cos theta + r r'' cos^2 theta$
2. $r'$ : $-2(r')^2 sin^2 theta - 2r' r sin theta cos theta$
3. $r$ : $-r r' sin theta cos theta - r^2 cos^2 theta$

Step A - Step B:

1. $r'' r'$: $r'' r' sin theta cos theta - r'' r' sin theta cos theta = 0$ 

2. $r''r$: $(-r'' r sin^2 theta) - (r'' r cos^2 theta) = -r r'' (sin^2 theta + cos^2 theta) = -r r''$

3. $r'^2$: $(2r'^2 cos^2 theta) - (-2r'^2 sin^2 theta) = 2r'^2 (cos^2 theta + sin^2 theta) = 2r'^2$

4. $r'r$: $(-2r' r sin theta cos theta - r r' sin theta cos theta) - (-2r'r sin theta cos theta - r r' sin theta cos theta) = 0$ 

5. $r^2$: $(r^2 sin^2 theta) - (-r^2 cos^2 theta) = r^2 (sin^2 theta + cos^2 theta) = r^2$

$therefore y''x' - y'x'' = r^2 + 2r'^2 - r r'' $

Denominator:
$(x'^2 + y'^2)^(3/2)$

$x'^2&=(r' cos theta - r sin theta)^2\
&=r'^2 cos^2 theta - 2 r r' sin theta cos theta + r^2 sin^2 theta$

$y'^2&=(r' sin theta + r cos theta)^2\
&=r'^2 sin^2 theta + 2 r r' sin theta cos theta + r^2 cos^2 theta$

$ x'^2 + y'^2 &= r'^2 cos^2 theta - 2 r r' sin theta cos theta + r^2 sin^2 theta+r'^2 sin^2 theta + 2 r r' sin theta cos theta + r^2 cos^2 theta\
&=r'^2 cos^2 theta +r'^2 sin^2 theta - 2 r r' sin theta cos theta+ 2 r r' sin theta cos theta+ r^2 sin^2 theta  + r^2 cos^2 theta\
&=r'^2+r^2
$

Therefore, the curvature formula in polar coordinate is as follows:

$ kappa &= abs(y''x' - y'x'')/(x'^2 + y'^2)^(3/2)\
&= abs(r^2 + 2r'^2 - r r'')/(r'^2+r^2)^(3/2) $


= Examples

=== 1. Prove the curvature of line is zero:
#align(center)[#image("line curvature.png", width: 40%)]
A line in polar form is most naturally described by its closest point to the origin. Drop a perpendicular from the origin to the line. Call that shortest distance d (also written p), and call the angle that perpendicular makes with the x-axis($alpha$).

Any point P on the line can be described as $(r, theta)$. The foot of the perpendicular is at distance d from the origin, at angle $alpha$. The angle between the direction to P and the direction of that perpendicular is $(theta − alpha)$. Basic trigonometry in the right triangle gives:

$ r cos(theta-alpha) = d $

$ r_theta = d/(cos(theta - alpha)) = d sec phi "where" phi = theta - alpha $

from curvature in polar coordinate:
$ kappa = abs(r^2 + 2r'^2 - r r'')/(r'^2+r^2)^(3/2) $

$ r'_theta &= d d/(d theta) 1/(cos(theta - alpha)) dot d/(d theta)(theta-alpha)\
&=d (0 dot cos(theta-alpha)-1 dot (-sin(theta-alpha)))/(cos^2(theta-alpha)) dot 1\
&=d sin(theta-alpha)/(cos^2(theta-alpha))\
&=d sec(theta-alpha)tan(theta-alpha)\
&=d sec phi tan phi $

$ r''_theta &= d sec phi tan phi tan phi + d sec phi sec phi cos phi \
&=d (sec phi tan^2 phi + sec^3 phi) $

Numerator: $ r^2 + 2r'^2 - r r''$

$r^2 &: d^2 sec^2 phi \
2r'^2&: 2 (d sec phi tan phi)^2 = 2d^2 sec^2phi tan^2 phi \
r r'' &: d sec phi dot d(sec phi tan^2 phi + sec^3 phi)=d^2 sec^2 phi tan^2 phi + d^2 sec^4 phi $

$ r^2 + 2r'^2 - r r''&=d^2 sec^2 phi+ 2d^2 sec^2phi tan^2 phi-d^2 sec^2 phi tan^2 phi - d^2 sec^4 phi\
&=d^2sec^2 phi+d^2 sec^2phi tan^2 phi-d^2 sec^4 phi\
&=d^2 sec^2 phi(1+tan^2 phi)-d^2 sec^4 phi\
&=d^2 sec^2 phi sec^2 phi-d^2 sec^4 phi\
&=0$

=== 2. Curvature of $y=f(x)$:
$ x' = 1 wide x''=0 wide y' = (d y)/(d x) wide y''=(d^2y)/(d x^2) $
$ kappa &= (y''x' - y'x'')/(x'^2 + y'^2)^(3/2)\
&= (y'')/(1 + y'^2)^(3/2)\
&= ((d^2y)/(d x^2))/[1 + ((d y)/(d x))^2]^(3/2)
$

Curvature in vector perspective:

$ kappa = (d theta)/(d s) = (d theta)/(d x) (d x)/(d s) $


=== Find $d x \/ d s$:

$ bold(r) = vec(x, f(x), delim: "[") $ where $x$ is not arc length.

$ (d bold(r))/(d x) = vec(1, f'(x), delim: "[") $ 

$ abs((d bold(r))/(d x)) = sqrt(1+ [f'(x)]^2) $ 

$ d s^2 = d x^2 + d y^2 -> d s = sqrt(d x^2 + d y^2) -> (d s)/(d x) = sqrt(1+((d y)/(d x))^2) $

$ (d x)/(d s) = 1/sqrt(1+((d y)/(d x))^2)  = 1/sqrt(1+[f'(x)]^2) $

=== Find $d theta \/ d s$:

$ bold(T)&=(d bold(r))/(d s) <- (d bold(r))/(d s)=(d r)/(d x) (d x)/(d s)\ 
&=vec(1, f'(x), delim: "[") 1/sqrt(1+[f'(x)]^2) $

If the tangent makes an angle $theta$ with the $x$-axis, then

$ bold(T)=vec(cos theta, sin theta, delim: "[") =vec(1, f'(x), delim: "[") 1/sqrt(1+[f'(x)]^2) $

Therefore,
$ cos theta = 1/sqrt(1+[f'(x)]^2) $
$ sin theta = f'/sqrt(1+[f'(x)]^2) $
$ tan theta = (sin theta)/(cos theta)=f'/sqrt(1+[f'(x)]^2)sqrt(1+[f'(x)]^2) =f' $

So,\
$ theta = tan^(-1) (f'(x)) $

Now calculate curvature

$ kappa = (d theta)/(d s) = (d theta)/(d x) (d x)/(d s) $

$ (d theta)/(d x) = d/(d x)  tan^(-1) (f'(x)) = (f''(x)) / (1+f'(x)^2) $

$ (d x)/(d s) = 1/sqrt(1+[f'(x)]^2) $

Therefore,

$ kappa & = (d theta)/(d s) = (d theta)/(d x) (d x)/(d s)\
&=(f''(x)) / (1+f'(x)^2) 1/sqrt(1+[f'(x)]^2)\
&=(f''(x)) / [1+f'(x)^2]^(3\/2) $

=== 3. Curvature of a circle

The curvature of a circle in polar coordinate($r=a, r'=0, r''=0$):

$ kappa &= abs(r^2 + 2r'^2 - r r'')/(r'^2+r^2)^(3/2) =r^2/(r^2)^(3/2) =r^2/r^3=1/r=1/a $



