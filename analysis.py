import simplejson as json
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = 12,6

PR = []
for t in f.readlines():
    try:
        rd = json.loads(t[:-2])
        if (rd['properties']['STATE'] == 'PR'):
            PR += [rd]
    except:
        print t

# wget https://raw.githubusercontent.com/miguelrios/atlaspr/master/geotiles/pueblos.json

f = file("pueblos.json")
boundary = json.loads(f.read())

for b in boundary['pueblos']['features'][:]:
    town = np.array(b['geometry']['coordinates'][0])
    plt.plot(town[:,0], town[:,1], 'k', alpha=0.1)
    
for p in PR[:]:
    rte = np.array(p['geometry']['coordinates'])
    plt.plot(rte[:,0], rte[:,1])
    
plt.axis("Equal")
plt.axis("Off")
