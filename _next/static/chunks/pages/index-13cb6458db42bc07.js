(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[405],{8581:function(e,t,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/",function(){return n(8848)}])},2469:function(e,t,n){"use strict";n.d(t,{Z:function(){return l}});var r=n(5893),a=n(9008),o=n(1664),i=n(1163);function s(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}var c=[{name:"Patch",href:"/"},{name:"Help",href:"/help"},{name:"Infohud Modes",href:"/infohudmode"},{name:"Changelog",href:"/changelog"}],u=function(e){var t=e.href,n=e.name,a="hover:text-indigo-600 text-gray-700";return(0,i.useRouter)().asPath===t&&(a="".concat(a," underline underline-offset-4")),(0,r.jsx)(o.default,{href:t,children:(0,r.jsx)("a",{className:a,children:n})})};function l(e){var t=e.children;return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsxs)(a.default,{children:[(0,r.jsx)("meta",{name:"viewport",content:"width=device-width, initial-scale=1"}),(0,r.jsx)("title",{children:"Super Metroid Practice Hack"})]}),(0,r.jsxs)("div",{className:"min-h-screen bg-gray-100",children:[(0,r.jsx)("nav",{className:"bg-gray-200",children:(0,r.jsx)("div",{children:(0,r.jsx)("div",{className:"flex justify-around h-16 px-20 shadow items-center",children:(0,r.jsxs)("div",{className:"flex items-center space-x-16",children:[(0,r.jsx)("h1",{className:"text-xl lg:text-2xl font-bold",children:(0,r.jsx)(o.default,{href:"/",children:(0,r.jsx)("a",{className:"text-black hover:text-indigo-600",children:"Super Metroid Practice Hack"})})}),(0,r.jsx)("div",{className:"flex justify-around space-x-4",children:c.map((function(e){return(0,r.jsx)(u,function(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{},r=Object.keys(n);"function"===typeof Object.getOwnPropertySymbols&&(r=r.concat(Object.getOwnPropertySymbols(n).filter((function(e){return Object.getOwnPropertyDescriptor(n,e).enumerable})))),r.forEach((function(t){s(e,t,n[t])}))}return e}({},e),e.href)}))})]})})})}),(0,r.jsx)("div",{className:"container mx-auto",children:(0,r.jsx)("div",{className:"flex flex-wrap justify-center",children:t})})]})]})}},8848:function(e,t,n){"use strict";n.r(t),n.d(t,{default:function(){return P}});var r=n(4051),a=n.n(r),o=n(5893),i=n(2469),s=JSON.parse('{"u2":"Super Metroid Practice Hack","i8":"2.5.11","oW":["NTSC","PAL"],"ue":{"NTSC":{"name":"Super Metroid (JU)","crc":"D63ED5F8"},"PAL":{"name":"Super Metroid (E)","crc":"AD2CBF9C"}},"_q":[{"id":"platform","name":"Platform","options":[{"id":"sd2snes","name":"SD2SNES / FXPAK"},{"id":"tinystates","name":"MiSTer, Everdrive, Modern Emulators"},{"id":"emulator","name":"Older Emulators, SNES Classic"}]}],"BV":[{"platform":"emulator","variant":"NTSC","file":"/patches/emulator-ntsc.ips","size":4194304},{"platform":"emulator","variant":"PAL","file":"/patches/emulator-pal.ips","size":4194304},{"platform":"sd2snes","variant":"NTSC","file":"/patches/sd2snes-ntsc.ips","size":4194304},{"platform":"sd2snes","variant":"PAL","file":"/patches/sd2snes-pal.ips","size":4194304},{"platform":"tinystates","variant":"NTSC","file":"/patches/tinystates-ntsc.ips","size":4194304},{"platform":"tinystates","variant":"PAL","file":"/patches/tinystates-pal.ips","size":4194304}]}'),c=n(7294),u=n(3162);function l(e,t){(null==t||t>e.length)&&(t=e.length);for(var n=0,r=new Array(t);n<t;n++)r[n]=e[n];return r}function f(e,t,n,r,a,o,i){try{var s=e[o](i),c=s.value}catch(u){return void n(u)}s.done?t(c):Promise.resolve(c).then(r,a)}function d(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function h(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{},r=Object.keys(n);"function"===typeof Object.getOwnPropertySymbols&&(r=r.concat(Object.getOwnPropertySymbols(n).filter((function(e){return Object.getOwnPropertyDescriptor(n,e).enumerable})))),r.forEach((function(t){d(e,t,n[t])}))}return e}function p(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){var n=null==e?null:"undefined"!==typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null!=n){var r,a,o=[],i=!0,s=!1;try{for(n=n.call(e);!(i=(r=n.next()).done)&&(o.push(r.value),!t||o.length!==t);i=!0);}catch(c){s=!0,a=c}finally{try{i||null==n.return||n.return()}finally{if(s)throw a}}return o}}(e,t)||function(e,t){if(!e)return;if("string"===typeof e)return l(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);"Object"===n&&e.constructor&&(n=e.constructor.name);if("Map"===n||"Set"===n)return Array.from(n);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return l(e,t)}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function m(e){var t=e.variant,n=e.romData,r=(0,c.useState)(Object.fromEntries(s._q.map((function(e){return[e.id,e.options[0].id]})))),i=r[0],l=r[1],m=function(e,t){for(var n=!1,r=5,a=new DataView(t.buffer);r+3<t.length;){var o=(t[r]<<16)+a.getUint16(r+1,n),i=a.getUint16(r+3,n);if(r+=5,i>0)e.set(t.slice(r,r+i),o),r+=i;else{var s=a.getUint16(r,n),c=t[r+2];e.set(Uint8Array.from(new Array(s),(function(){return c})),o),r+=3}}},v=function(){var e,r=(e=a().mark((function e(){var r,o,c,l,f;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,r=h({},i,{variant:t}),o=s.BV.find((function(e){return Object.keys(r).every((function(t){return e[t]==r[t]}))})),e.t0=Uint8Array,e.next=6,fetch(o.file,{cache:"no-store"});case 6:return e.next=8,e.sent.arrayBuffer();case 8:e.t1=e.sent,c=new e.t0(e.t1),l=s.u2+"-v"+s.i8+Object.entries(o).filter((function(e){var t=p(e,2),n=t[0];return t[1],"file"!==n&&"size"!==n})).reduce((function(e,t){var n=p(t,2);return n[0],e+"-"+n[1].toString().toLowerCase()}),"")+".sfc",(f=new Uint8Array(o.size)).set(n),m(f,c),null!==f?(0,u.saveAs)(new Blob([f]),l):alert("Could not create patched file."),e.next=20;break;case 17:e.prev=17,e.t2=e.catch(0),console.log("Error patching rom",e.t2);case 20:case"end":return e.stop()}}),e,null,[[0,17]])})),function(){var t=this,n=arguments;return new Promise((function(r,a){var o=e.apply(t,n);function i(e){f(o,r,a,i,s,"next",e)}function s(e){f(o,r,a,i,s,"throw",e)}i(void 0)}))});return function(){return r.apply(this,arguments)}}();return(0,o.jsxs)("div",{className:"py-4 px-6 h-auto w-7/12 bg-white shadow-xl font-sans",children:[(0,o.jsxs)("div",{className:"p-4 mb-4 bg-blue-100 text-blue-500 rounded shadow-sm font-sans font-bold",children:[s.u2," - Version ",s.i8," - ",t]}),(0,o.jsx)("p",{}),s._q.map((function(e){return(0,o.jsxs)("div",{className:"mb-4 mt-4",children:[(0,o.jsx)("label",{className:"block mx-1 mb-2 text-sm font-bold text-base",htmlFor:e.id,children:e.name}),(0,o.jsx)("select",{id:e.id,className:"w-full px-2 h-10 border rounded shadow cursor-pointer",onChange:function(t){return l((function(n){return h({},n,d({},e.id,t.target.value))}))},value:i[e.id],children:e.options.map((function(e){return(0,o.jsx)("option",{id:e.id,value:e.id,children:e.name},e.id)}))})]},e.id)})),(0,o.jsx)("div",{className:"mb-2 mt-8",children:(0,o.jsx)("button",{onClick:v,className:"px-4 h-10 ring-4 ring-blue-100 bg-blue-800 text-white font-bold rounded-lg font-mono",children:"Download"})})]})}var v=function(e){for(var t=window.crcTable||(window.crcTable=function(){for(var e,t=[],n=0;n<256;n++){e=n;for(var r=0;r<8;r++)e=1&e?3988292384^e>>>1:e>>>1;t[n]=e}return t}()),n=-1,r=0;r<e.length;r++)n=n>>>8^t[255&(n^e[r])];return(-1^n)>>>0};function b(e,t,n,r,a,o,i){try{var s=e[o](i),c=s.value}catch(u){return void n(u)}s.done?t(c):Promise.resolve(c).then(r,a)}function x(e){return function(){var t=this,n=arguments;return new Promise((function(r,a){var o=e.apply(t,n);function i(e){b(o,r,a,i,s,"next",e)}function s(e){b(o,r,a,i,s,"throw",e)}i(void 0)}))}}function y(e){var t=e.variant,n=e.onUploaded,r=(0,c.useRef)(null),i=s.ue[t],u=function(){var e=x(a().mark((function e(t){var n;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return n=new FileReader,e.abrupt("return",new Promise((function(e,r){n.onerror=function(){n.abort(),r(new DOMException("Error parsing data"))},n.onload=function(t){e(t.target.result)},n.readAsArrayBuffer(t)})));case 2:case"end":return e.stop()}}),e)})));return function(t){return e.apply(this,arguments)}}(),l=function(){var e=x(a().mark((function e(t){var o,s;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(t.preventDefault(),null!=(o=r.current.files[0])){e.next=5;break}return alert("You must select a file first"),e.abrupt("return");case 5:return s=null,e.prev=6,e.t0=Uint8Array,e.next=10,u(o);case 10:e.t1=e.sent,s=new e.t0(e.t1),e.next=18;break;case 14:return e.prev=14,e.t2=e.catch(6),alert("Could not read uploaded file data",e.t2),e.abrupt("return");case 18:if((512&s.length)>0&&(s=s.slice(512,s.length)),v(s).toString(16).toUpperCase()===i.crc){e.next=23;break}return alert("The select file's checksum does not match the expected value, try with another file."),e.abrupt("return");case 23:n(s);case 24:case"end":return e.stop()}}),e,null,[[6,14]])})));return function(t){return e.apply(this,arguments)}}();return(0,o.jsxs)("div",{className:"py-4 px-6 h-auto w-7/12 bg-white shadow-xl font-sans",children:[(0,o.jsx)("div",{className:"p-4 mb-4 bg-blue-100 text-blue-500 rounded shadow-sm font-sans font-bold",children:"Select your ROM"}),(0,o.jsx)("p",{children:"To be able to create a practice hack ROM you must first select your regular Super Metroid ROM."}),(0,o.jsxs)("p",{children:["It's usually named ",(0,o.jsx)("i",{children:i.name})," and it should have the CRC checksum: ",(0,o.jsx)("b",{children:i.crc})]}),(0,o.jsxs)("form",{onSubmit:l,children:[(0,o.jsxs)("div",{className:"mb-4 mt-4",children:[(0,o.jsx)("label",{className:"block mx-1 mb-2 text-sm font-bold text-base",htmlFor:"type",children:"Select your ROM"}),(0,o.jsx)("input",{type:"file",ref:r})]}),(0,o.jsx)("div",{className:"mb-2 mt-8",children:(0,o.jsx)("button",{type:"submit",className:"px-4 h-10 ring-4 ring-blue-100 bg-blue-800 text-white font-bold rounded-lg font-mono",children:"OK"})})]})]})}var w=n(9483),g=n.n(w),j=n(1664);function N(e,t,n,r,a,o,i){try{var s=e[o](i),c=s.value}catch(u){return void n(u)}s.done?t(c):Promise.resolve(c).then(r,a)}function S(e){return function(){var t=this,n=arguments;return new Promise((function(r,a){var o=e.apply(t,n);function i(e){N(o,r,a,i,s,"next",e)}function s(e){N(o,r,a,i,s,"throw",e)}i(void 0)}))}}function O(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function k(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{},r=Object.keys(n);"function"===typeof Object.getOwnPropertySymbols&&(r=r.concat(Object.getOwnPropertySymbols(n).filter((function(e){return Object.getOwnPropertyDescriptor(n,e).enumerable})))),r.forEach((function(t){O(e,t,n[t])}))}return e}function P(){var e=(0,c.useState)(),t=e[0],n=e[1],r=(0,c.useState)(s.oW[0]),u=r[0],l=r[1];(0,c.useEffect)((function(){function e(){return(e=S(a().mark((function e(){var t,r,o,i,c,u,l;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t=!0,r=!1,o=void 0,e.prev=1,i=s.oW[Symbol.iterator]();case 3:if(t=(c=i.next()).done){e.next=18;break}return u=c.value,e.prev=5,e.next=8,g().getItem("romData-".concat(u));case 8:l=e.sent,n((function(e){return k({},e,O({},u,l))})),e.next=15;break;case 12:e.prev=12,e.t0=e.catch(5),console.log(e.t0);case 15:t=!0,e.next=3;break;case 18:e.next=24;break;case 20:e.prev=20,e.t1=e.catch(1),r=!0,o=e.t1;case 24:e.prev=24,e.prev=25,t||null==i.return||i.return();case 27:if(e.prev=27,!r){e.next=30;break}throw o;case 30:return e.finish(27);case 31:return e.finish(24);case 32:case"end":return e.stop()}}),e,null,[[1,20,24,32],[5,12],[25,,27,31]])})))).apply(this,arguments)}!function(){e.apply(this,arguments)}()}),[]);var f=function(){var e=S(a().mark((function e(t){return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,e.next=3,g().setItem("romData-".concat(u),t);case 3:n((function(e){return k({},e,O({},u,t))})),e.next=9;break;case 6:e.prev=6,e.t0=e.catch(0),console.log(e.t0);case 9:case"end":return e.stop()}}),e,null,[[0,6]])})));return function(t){return e.apply(this,arguments)}}();return(0,o.jsxs)(i.Z,{children:[(0,o.jsx)("div",{className:"flex px-6 h-auto mt-10 w-7/12 bg-white font-sans",children:s.oW.map((function(e){var t=e===u?"red":"gray";return(0,o.jsx)("div",{onClick:function(){return l(e)},className:"py-2 p-4 mt-4 mr-2 h-auto bg-".concat(t,"-100 text-").concat(t,"-500 rounded shadow-sm font-sans font-bold cursor-pointer"),children:e},e)}))}),void 0!==t?t[u]?(0,o.jsx)(m,{variant:u,romData:t[u]}):(0,o.jsx)(y,{variant:u,onUploaded:f}):"",(0,o.jsxs)("div",{className:"py-4 px-6 h-auto mt-10 w-7/12 bg-white shadow-xl font-sans",children:[(0,o.jsx)("div",{className:"p-4 mb-4 bg-yellow-100 text-yellow-500 rounded shadow-sm font-sans font-bold",children:"Information"}),(0,o.jsxs)("div",{className:"flex flex-col text-sm gap-4 mx-2",children:[(0,o.jsxs)("p",{children:["For information on what's available in the practice hack and how to use it, you can visit the ",(0,o.jsx)(j.default,{href:"/help",children:"Help"})]}),(0,o.jsxs)("p",{children:["If you're wondering what's changed since the last version, just head to the ",(0,o.jsx)(j.default,{href:"/changelog",children:"Changelog"})]}),(0,o.jsxs)("p",{children:["Strong with SNES Assembly? Take a look at the source code at ",(0,o.jsx)(j.default,{href:"https://github.com/tewtal/sm_practice_hack/",children:"GitHub"})]})]})]})]})}}},function(e){e.O(0,[515,774,888,179],(function(){return t=8581,e(e.s=t);var t}));var t=e.O();_N_E=t}]);