s = tf('s');
G = (2 / (s^2 + 3*s + 2)) * exp(-0.58);
pidtool(G, 'pid');