
<map>
  <node ID="root" TEXT="0906腾讯">
    <node TEXT="JVM" ID="tvdyRe3J9p" _mubu_text="%3Cspan%3EJVM%3C/span%3E" STYLE="bubble" POSITION="right">
      <node TEXT="类加载" ID="b8gIQ1bbcW" _mubu_text="%3Cspan%3E%E7%B1%BB%E5%8A%A0%E8%BD%BD%3C/span%3E" STYLE="fork">
        <node TEXT="加载" ID="2XYJwwlvsF" _mubu_text="%3Cspan%3E%E5%8A%A0%E8%BD%BD%3C/span%3E" STYLE="fork">
          <node TEXT="将类文件中二进制数据读入内存，存放到方法区，在堆中创建.class对象" ID="nGYjP1qHRY" _mubu_text="%3Cspan%3E%E5%B0%86%E7%B1%BB%E6%96%87%E4%BB%B6%E4%B8%AD%E4%BA%8C%E8%BF%9B%E5%88%B6%E6%95%B0%E6%8D%AE%E8%AF%BB%E5%85%A5%E5%86%85%E5%AD%98%EF%BC%8C%E5%AD%98%E6%94%BE%E5%88%B0%E6%96%B9%E6%B3%95%E5%8C%BA%EF%BC%8C%E5%9C%A8%E5%A0%86%E4%B8%AD%E5%88%9B%E5%BB%BA.class%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork">
            <node TEXT="ClassLoader" ID="heEyw8dx6r" _mubu_text="%3Cspan%3EClassLoader%3C/span%3E" STYLE="fork">
              <node TEXT="双亲委派机制" ID="bWCcVrwxu5" _mubu_text="%3Cspan%3E%E5%8F%8C%E4%BA%B2%E5%A7%94%E6%B4%BE%E6%9C%BA%E5%88%B6%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="链接" ID="3IUgd9EQyt" _mubu_text="%3Cspan%3E%E9%93%BE%E6%8E%A5%3C/span%3E" STYLE="fork">
          <node TEXT="格式校验" ID="Rdn2ECBJbR" _mubu_text="%3Cspan%3E%E6%A0%BC%E5%BC%8F%E6%A0%A1%E9%AA%8C%3C/span%3E" STYLE="fork"/>
          <node TEXT="半初始化" ID="OyPRlsa6cR" _mubu_text="%3Cspan%3E%E5%8D%8A%E5%88%9D%E5%A7%8B%E5%8C%96%3C/span%3E" STYLE="fork">
            <node TEXT="为静态变量分配内存、设置零值" ID="focap1YWuL" _mubu_text="%3Cspan%3E%E4%B8%BA%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E5%88%86%E9%85%8D%E5%86%85%E5%AD%98%E3%80%81%E8%AE%BE%E7%BD%AE%E9%9B%B6%E5%80%BC%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="解析" ID="tCM70xgvRW" _mubu_text="%3Cspan%3E%E8%A7%A3%E6%9E%90%3C/span%3E" STYLE="fork">
            <node TEXT="将常量池中的符号引用转换为直接引用的过程" ID="rDxzthldiT" _mubu_text="%3Cspan%3E%E5%B0%86%E5%B8%B8%E9%87%8F%E6%B1%A0%E4%B8%AD%E7%9A%84%E7%AC%A6%E5%8F%B7%E5%BC%95%E7%94%A8%E8%BD%AC%E6%8D%A2%E4%B8%BA%E7%9B%B4%E6%8E%A5%E5%BC%95%E7%94%A8%E7%9A%84%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="初始化" ID="v36qKj2Izy" _mubu_text="%3Cspan%3E%E5%88%9D%E5%A7%8B%E5%8C%96%3C/span%3E" STYLE="fork">
          <node TEXT="为静态变量付初始值" ID="eVhB0d6jq4" _mubu_text="%3Cspan%3E%E4%B8%BA%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E4%BB%98%E5%88%9D%E5%A7%8B%E5%80%BC%3C/span%3E" STYLE="fork"/>
          <node TEXT="&lt;clinit&gt;" ID="HhLr8g40kP" _mubu_text="%3Cspan%3E&amp;lt;clinit&amp;gt;%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="内存模型" ID="VYpjtIubMP" _mubu_text="%3Cspan%3E%E5%86%85%E5%AD%98%E6%A8%A1%E5%9E%8B%3C/span%3E" STYLE="fork">
        <node TEXT="PC寄存器" ID="0mwvJdF8UL" _mubu_text="%3Cspan%3EPC%E5%AF%84%E5%AD%98%E5%99%A8%3C/span%3E" STYLE="fork"/>
        <node TEXT="虚拟机栈" ID="Hk5kZ3XD7L" _mubu_text="%3Cspan%3E%E8%99%9A%E6%8B%9F%E6%9C%BA%E6%A0%88%3C/span%3E" STYLE="fork">
          <node TEXT="栈帧" ID="XpBnyhQnTt" _mubu_text="%3Cspan%3E%E6%A0%88%E5%B8%A7%3C/span%3E" STYLE="fork">
            <node TEXT="方法调用" ID="erwojjM45J" _mubu_text="%3Cspan%3E%E6%96%B9%E6%B3%95%E8%B0%83%E7%94%A8%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="本地方法栈" ID="xmZiNPBEYw" _mubu_text="%3Cspan%3E%E6%9C%AC%E5%9C%B0%E6%96%B9%E6%B3%95%E6%A0%88%3C/span%3E" STYLE="fork"/>
        <node TEXT="堆" ID="GwAkiRQxMD" _mubu_text="%3Cspan%3E%E5%A0%86%3C/span%3E" STYLE="fork">
          <node TEXT="新生代" ID="Y1yBEEgbRF" _mubu_text="%3Cspan%3E%E6%96%B0%E7%94%9F%E4%BB%A3%3C/span%3E" STYLE="fork">
            <node TEXT="Eden区" ID="SzqvcSXv7i" _mubu_text="%3Cspan%3EEden%E5%8C%BA%3C/span%3E" STYLE="fork">
              <node TEXT="TLAB" ID="2UgqlCmwAU" _mubu_text="%3Cspan%3ETLAB%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="Survivor区" ID="ZJVsdo8RD5" _mubu_text="%3Cspan%3ESurvivor%E5%8C%BA%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="老年代" ID="RvB0iuHikp" _mubu_text="%3Cspan%3E%E8%80%81%E5%B9%B4%E4%BB%A3%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="方法区" ID="KXLSIxSnyl" _mubu_text="%3Cspan%3E%E6%96%B9%E6%B3%95%E5%8C%BA%3C/span%3E" STYLE="fork">
          <node TEXT="演进" ID="EPwaaE3Pmf" _mubu_text="%3Cspan%3E%E6%BC%94%E8%BF%9B%3C/span%3E" STYLE="fork">
            <node TEXT="jdk6" ID="qdSIeXKPlE" _mubu_text="%3Cspan%3Ejdk6%3C/span%3E" STYLE="fork">
              <node TEXT="有永久代，静态变量存放在永久代" ID="ZJnAmB5meD" _mubu_text="%3Cspan%3E%E6%9C%89%E6%B0%B8%E4%B9%85%E4%BB%A3%EF%BC%8C%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E5%AD%98%E6%94%BE%E5%9C%A8%E6%B0%B8%E4%B9%85%E4%BB%A3%3C/span%3E" STYLE="fork">
                <node TEXT="指向静态变量的引用，对象始终在堆中" ID="iMlHvT2Z3F" _mubu_text="%3Cspan%3E%E6%8C%87%E5%90%91%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E7%9A%84%E5%BC%95%E7%94%A8%EF%BC%8C%E5%AF%B9%E8%B1%A1%E5%A7%8B%E7%BB%88%E5%9C%A8%E5%A0%86%E4%B8%AD%3C/span%3E" STYLE="fork"/>
                <node TEXT="提高回收效率" ID="ztsGU9dJAA" _mubu_text="%3Cspan%3E%E6%8F%90%E9%AB%98%E5%9B%9E%E6%94%B6%E6%95%88%E7%8E%87%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="jdk7" ID="jaWaiCYKoQ" _mubu_text="%3Cspan%3Ejdk7%3C/span%3E" STYLE="fork">
              <node TEXT="有永久代，字符串常量池、静态变量保存在堆空间" ID="Vx6w8CHncl" _mubu_text="%3Cspan%3E%E6%9C%89%E6%B0%B8%E4%B9%85%E4%BB%A3%EF%BC%8C%E5%AD%97%E7%AC%A6%E4%B8%B2%E5%B8%B8%E9%87%8F%E6%B1%A0%E3%80%81%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E4%BF%9D%E5%AD%98%E5%9C%A8%E5%A0%86%E7%A9%BA%E9%97%B4%3C/span%3E" STYLE="fork">
                <node TEXT="提高回收效率" ID="7ZwDxcCiDZ" _mubu_text="%3Cspan%3E%E6%8F%90%E9%AB%98%E5%9B%9E%E6%94%B6%E6%95%88%E7%8E%87%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="jdk8" ID="Kn1MyQTOIy" _mubu_text="%3Cspan%3Ejdk8%3C/span%3E" STYLE="fork">
              <node TEXT="无永久代，字符串常量池、静态变量保存在堆中，类型信息、字段、方法、常量保存在本地内存的元空间中" ID="qM8MoWTpQo" _mubu_text="%3Cspan%3E%E6%97%A0%E6%B0%B8%E4%B9%85%E4%BB%A3%EF%BC%8C%E5%AD%97%E7%AC%A6%E4%B8%B2%E5%B8%B8%E9%87%8F%E6%B1%A0%E3%80%81%E9%9D%99%E6%80%81%E5%8F%98%E9%87%8F%E4%BF%9D%E5%AD%98%E5%9C%A8%E5%A0%86%E4%B8%AD%EF%BC%8C%E7%B1%BB%E5%9E%8B%E4%BF%A1%E6%81%AF%E3%80%81%E5%AD%97%E6%AE%B5%E3%80%81%E6%96%B9%E6%B3%95%E3%80%81%E5%B8%B8%E9%87%8F%E4%BF%9D%E5%AD%98%E5%9C%A8%E6%9C%AC%E5%9C%B0%E5%86%85%E5%AD%98%E7%9A%84%E5%85%83%E7%A9%BA%E9%97%B4%E4%B8%AD%3C/span%3E" STYLE="fork">
                <node TEXT="永久代空间大小难以确定" ID="uILtOtlAe8" _mubu_text="%3Cspan%3E%E6%B0%B8%E4%B9%85%E4%BB%A3%E7%A9%BA%E9%97%B4%E5%A4%A7%E5%B0%8F%E9%9A%BE%E4%BB%A5%E7%A1%AE%E5%AE%9A%3C/span%3E" STYLE="fork"/>
                <node TEXT="对永久代的调优困难" ID="3FqQpqXcXE" _mubu_text="%3Cspan%3E%E5%AF%B9%E6%B0%B8%E4%B9%85%E4%BB%A3%E7%9A%84%E8%B0%83%E4%BC%98%E5%9B%B0%E9%9A%BE%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
          <node TEXT="结构" ID="I2s8Elf11A" _mubu_text="%3Cspan%3E%E7%BB%93%E6%9E%84%3C/span%3E" STYLE="fork">
            <node TEXT="类型信息" ID="wPrpMiB3lp" _mubu_text="%3Cspan%3E%E7%B1%BB%E5%9E%8B%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
            <node TEXT="域信息" ID="V0WRS8o85k" _mubu_text="%3Cspan%3E%E5%9F%9F%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
            <node TEXT="方法信息" ID="yHE3DARWpd" _mubu_text="%3Cspan%3E%E6%96%B9%E6%B3%95%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
            <node TEXT="运行时常量池" ID="MXKyRowHZY" _mubu_text="%3Cspan%3E%E8%BF%90%E8%A1%8C%E6%97%B6%E5%B8%B8%E9%87%8F%E6%B1%A0%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="GC" ID="lu5SuXmiZm" _mubu_text="%3Cspan%3EGC%3C/span%3E" STYLE="fork">
        <node TEXT="垃圾标记" ID="8WfOxg0yXd" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E6%A0%87%E8%AE%B0%3C/span%3E" STYLE="fork">
          <node TEXT="引用计数" ID="yEQPZsHNzM" _mubu_text="%3Cspan%3E%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%3C/span%3E" STYLE="fork">
            <node TEXT="Recycle算法" ID="fVinWK8ms2" _mubu_text="%3Cspan%3ERecycle%E7%AE%97%E6%B3%95%3C/span%3E" STYLE="fork">
              <node TEXT="对象分类" ID="H6GH0RXo27" _mubu_text="%3Cspan%3E%E5%AF%B9%E8%B1%A1%E5%88%86%E7%B1%BB%3C/span%3E" STYLE="fork">
                <node TEXT="黑色" ID="HF3twINIUm" _mubu_text="%3Cspan%3E%E9%BB%91%E8%89%B2%3C/span%3E" STYLE="fork">
                  <node TEXT="存活对象" ID="bRtuWjzUnp" _mubu_text="%3Cspan%3E%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="紫色" ID="QM8pF1WCGv" _mubu_text="%3Cspan%3E%E7%B4%AB%E8%89%B2%3C/span%3E" STYLE="fork">
                  <node TEXT="可能存在环引用的对象" ID="I53Y3Xzj7f" _mubu_text="%3Cspan%3E%E5%8F%AF%E8%83%BD%E5%AD%98%E5%9C%A8%E7%8E%AF%E5%BC%95%E7%94%A8%E7%9A%84%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="灰色" ID="Wgh7jqDlLG" _mubu_text="%3Cspan%3E%E7%81%B0%E8%89%B2%3C/span%3E" STYLE="fork">
                  <node TEXT="垃圾回收期扫描到的对象，在扫描完所有节点之前被染灰" ID="wUdi8clLGQ" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E5%9B%9E%E6%94%B6%E6%9C%9F%E6%89%AB%E6%8F%8F%E5%88%B0%E7%9A%84%E5%AF%B9%E8%B1%A1%EF%BC%8C%E5%9C%A8%E6%89%AB%E6%8F%8F%E5%AE%8C%E6%89%80%E6%9C%89%E8%8A%82%E7%82%B9%E4%B9%8B%E5%89%8D%E8%A2%AB%E6%9F%93%E7%81%B0%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="绿色" ID="2im8LmmjYZ" _mubu_text="%3Cspan%3E%E7%BB%BF%E8%89%B2%3C/span%3E" STYLE="fork">
                  <node TEXT="不存在环引用的对象" ID="vrF2sJm88B" _mubu_text="%3Cspan%3E%E4%B8%8D%E5%AD%98%E5%9C%A8%E7%8E%AF%E5%BC%95%E7%94%A8%E7%9A%84%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="白色" ID="dRAR05bxP6" _mubu_text="%3Cspan%3E%E7%99%BD%E8%89%B2%3C/span%3E" STYLE="fork">
                  <node TEXT="垃圾" ID="XtItv2lpls" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%3C/span%3E" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="流程" ID="8J4M3Kl3DX" _mubu_text="%3Cspan%3E%E6%B5%81%E7%A8%8B%3C/span%3E" STYLE="fork">
                <node TEXT="从紫色节点触发，进行子图追踪。同时减少由内部指针产生的引用计数，遍历过的对象被标记为灰色" ID="Fd66FlYo7n" _mubu_text="%3Cspan%3E%E4%BB%8E%E7%B4%AB%E8%89%B2%E8%8A%82%E7%82%B9%E8%A7%A6%E5%8F%91%EF%BC%8C%E8%BF%9B%E8%A1%8C%E5%AD%90%E5%9B%BE%E8%BF%BD%E8%B8%AA%E3%80%82%E5%90%8C%E6%97%B6%E5%87%8F%E5%B0%91%E7%94%B1%E5%86%85%E9%83%A8%E6%8C%87%E9%92%88%E4%BA%A7%E7%94%9F%E7%9A%84%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%EF%BC%8C%E9%81%8D%E5%8E%86%E8%BF%87%E7%9A%84%E5%AF%B9%E8%B1%A1%E8%A2%AB%E6%A0%87%E8%AE%B0%E4%B8%BA%E7%81%B0%E8%89%B2%3C/span%3E" STYLE="fork"/>
                <node TEXT="对所有对象进行检测，如果某个对象的引用计数不是0，则该对象必然被外面的对象引用着，于是将一阶段的操作进行修正（引用计数器不为0的进行修正），重新染为黑色。若某个引用计数为0，则标记为白色，进行垃圾回收" ID="DsXtc9ucjZ" _mubu_text="%3Cspan%3E%E5%AF%B9%E6%89%80%E6%9C%89%E5%AF%B9%E8%B1%A1%E8%BF%9B%E8%A1%8C%E6%A3%80%E6%B5%8B%EF%BC%8C%E5%A6%82%E6%9E%9C%E6%9F%90%E4%B8%AA%E5%AF%B9%E8%B1%A1%E7%9A%84%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%E4%B8%8D%E6%98%AF0%EF%BC%8C%E5%88%99%E8%AF%A5%E5%AF%B9%E8%B1%A1%E5%BF%85%E7%84%B6%E8%A2%AB%E5%A4%96%E9%9D%A2%E7%9A%84%E5%AF%B9%E8%B1%A1%E5%BC%95%E7%94%A8%E7%9D%80%EF%BC%8C%E4%BA%8E%E6%98%AF%E5%B0%86%E4%B8%80%E9%98%B6%E6%AE%B5%E7%9A%84%E6%93%8D%E4%BD%9C%E8%BF%9B%E8%A1%8C%E4%BF%AE%E6%AD%A3%EF%BC%88%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%E5%99%A8%E4%B8%8D%E4%B8%BA0%E7%9A%84%E8%BF%9B%E8%A1%8C%E4%BF%AE%E6%AD%A3%EF%BC%89%EF%BC%8C%E9%87%8D%E6%96%B0%E6%9F%93%E4%B8%BA%E9%BB%91%E8%89%B2%E3%80%82%E8%8B%A5%E6%9F%90%E4%B8%AA%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%E4%B8%BA0%EF%BC%8C%E5%88%99%E6%A0%87%E8%AE%B0%E4%B8%BA%E7%99%BD%E8%89%B2%EF%BC%8C%E8%BF%9B%E8%A1%8C%E5%9E%83%E5%9C%BE%E5%9B%9E%E6%94%B6%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="思想" ID="FfSHbo8Px8" _mubu_text="%3Cspan%3E%E6%80%9D%E6%83%B3%3C/span%3E" STYLE="fork">
                <node TEXT="首先找到可能是环状引用的对象，试着打破环" ID="o2N25g8FSN" _mubu_text="%3Cspan%3E%E9%A6%96%E5%85%88%E6%89%BE%E5%88%B0%E5%8F%AF%E8%83%BD%E6%98%AF%E7%8E%AF%E7%8A%B6%E5%BC%95%E7%94%A8%E7%9A%84%E5%AF%B9%E8%B1%A1%EF%BC%8C%E8%AF%95%E7%9D%80%E6%89%93%E7%A0%B4%E7%8E%AF%3C/span%3E" STYLE="fork"/>
                <node TEXT="打破环之后，沿着该对象触发遍历，对每个对象的引用计数-1，消除内部引用" ID="29dX9mdf31" _mubu_text="%3Cspan%3E%E6%89%93%E7%A0%B4%E7%8E%AF%E4%B9%8B%E5%90%8E%EF%BC%8C%E6%B2%BF%E7%9D%80%E8%AF%A5%E5%AF%B9%E8%B1%A1%E8%A7%A6%E5%8F%91%E9%81%8D%E5%8E%86%EF%BC%8C%E5%AF%B9%E6%AF%8F%E4%B8%AA%E5%AF%B9%E8%B1%A1%E7%9A%84%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0-1%EF%BC%8C%E6%B6%88%E9%99%A4%E5%86%85%E9%83%A8%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
          <node TEXT="可达性分析" ID="AAQ6hgKcFL" _mubu_text="%3Cspan%3E%E5%8F%AF%E8%BE%BE%E6%80%A7%E5%88%86%E6%9E%90%3C/span%3E" STYLE="fork">
            <node TEXT="从GC root出发，向下搜索。没有任何引用链相连的对象是垃圾" ID="aNXzt0y7BT" _mubu_text="%3Cspan%3E%E4%BB%8EGC%20root%E5%87%BA%E5%8F%91%EF%BC%8C%E5%90%91%E4%B8%8B%E6%90%9C%E7%B4%A2%E3%80%82%E6%B2%A1%E6%9C%89%E4%BB%BB%E4%BD%95%E5%BC%95%E7%94%A8%E9%93%BE%E7%9B%B8%E8%BF%9E%E7%9A%84%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%9E%83%E5%9C%BE%3C/span%3E" STYLE="fork"/>
            <node TEXT="标记过程需要STW，因此CMS对其进行了优化" ID="2bIA2YT9Yt" _mubu_text="%3Cspan%3E%E6%A0%87%E8%AE%B0%E8%BF%87%E7%A8%8B%E9%9C%80%E8%A6%81STW%EF%BC%8C%E5%9B%A0%E6%AD%A4CMS%E5%AF%B9%E5%85%B6%E8%BF%9B%E8%A1%8C%E4%BA%86%E4%BC%98%E5%8C%96%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="垃圾清除" ID="TiVlZ0I8mX" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E6%B8%85%E9%99%A4%3C/span%3E" STYLE="fork"/>
        <node TEXT="引用" ID="oyQfIYQLg8" _mubu_text="%3Cspan%3E%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork">
          <node TEXT="强引用" ID="h0J4XcZ04C" _mubu_text="%3Cspan%3E%E5%BC%BA%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork"/>
          <node TEXT="软引用" ID="O9Buj2OMFC" _mubu_text="%3Cspan%3E%E8%BD%AF%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork"/>
          <node TEXT="弱引用" ID="49eXcZ3FpC" _mubu_text="%3Cspan%3E%E5%BC%B1%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork"/>
          <node TEXT="虚引用" ID="Js6yFMASVQ" _mubu_text="%3Cspan%3E%E8%99%9A%E5%BC%95%E7%94%A8%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="垃圾回收器" ID="tR8ljEPBjg" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E5%9B%9E%E6%94%B6%E5%99%A8%3C/span%3E" STYLE="fork">
          <node TEXT="CMS" ID="uaz8B5lKhE" _mubu_text="%3Cspan%3ECMS%3C/span%3E" STYLE="fork">
            <node TEXT="三色算法" ID="OxwejixKUb" _mubu_text="%3Cspan%3E%E4%B8%89%E8%89%B2%E7%AE%97%E6%B3%95%3C/span%3E" STYLE="fork">
              <node TEXT="黑色" ID="eIlJRxc3MJ" _mubu_text="%3Cspan%3E%E9%BB%91%E8%89%B2%3C/span%3E" STYLE="fork">
                <node TEXT="存活对象" ID="fxfaFf4wfT" _mubu_text="%3Cspan%3E%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="灰色" ID="VNqu3JKNvI" _mubu_text="%3Cspan%3E%E7%81%B0%E8%89%B2%3C/span%3E" STYLE="fork">
                <node TEXT="可疑对象" ID="tMmbWFD6dK" _mubu_text="%3Cspan%3E%E5%8F%AF%E7%96%91%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="白色" ID="6NEidaK7f0" _mubu_text="%3Cspan%3E%E7%99%BD%E8%89%B2%3C/span%3E" STYLE="fork">
                <node TEXT="对象垃圾" ID="GXPqyzWijJ" _mubu_text="%3Cspan%3E%E5%AF%B9%E8%B1%A1%E5%9E%83%E5%9C%BE%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="流程" ID="9XHzbX1oVx" _mubu_text="%3Cspan%3E%E6%B5%81%E7%A8%8B%3C/span%3E" STYLE="fork">
                <node TEXT="从gc root触发，用黑灰白的规则，标记出所有同GC root相连的对象" ID="hwl5vZcMfr" _mubu_text="%3Cspan%3E%E4%BB%8Egc%20root%E8%A7%A6%E5%8F%91%EF%BC%8C%E7%94%A8%E9%BB%91%E7%81%B0%E7%99%BD%E7%9A%84%E8%A7%84%E5%88%99%EF%BC%8C%E6%A0%87%E8%AE%B0%E5%87%BA%E6%89%80%E6%9C%89%E5%90%8CGC%20root%E7%9B%B8%E8%BF%9E%E7%9A%84%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
                <node TEXT="扫描一遍结束后，进行一次短暂的STW，再次进行扫描。此时因为黑色对象已经被标记过，只需要找出灰色对象并顺着往下标记。" ID="bqcbJdbXJC" _mubu_text="%3Cspan%3E%E6%89%AB%E6%8F%8F%E4%B8%80%E9%81%8D%E7%BB%93%E6%9D%9F%E5%90%8E%EF%BC%8C%E8%BF%9B%E8%A1%8C%E4%B8%80%E6%AC%A1%E7%9F%AD%E6%9A%82%E7%9A%84STW%EF%BC%8C%E5%86%8D%E6%AC%A1%E8%BF%9B%E8%A1%8C%E6%89%AB%E6%8F%8F%E3%80%82%E6%AD%A4%E6%97%B6%E5%9B%A0%E4%B8%BA%E9%BB%91%E8%89%B2%E5%AF%B9%E8%B1%A1%E5%B7%B2%E7%BB%8F%E8%A2%AB%E6%A0%87%E8%AE%B0%E8%BF%87%EF%BC%8C%E5%8F%AA%E9%9C%80%E8%A6%81%E6%89%BE%E5%87%BA%E7%81%B0%E8%89%B2%E5%AF%B9%E8%B1%A1%E5%B9%B6%E9%A1%BA%E7%9D%80%E5%BE%80%E4%B8%8B%E6%A0%87%E8%AE%B0%E3%80%82%3C/span%3E" STYLE="fork"/>
                <node TEXT="gc线程扫描所有的内存，找出被标记为白色的对象清除" ID="BgFLwsdxeb" _mubu_text="%3Cspan%3Egc%E7%BA%BF%E7%A8%8B%E6%89%AB%E6%8F%8F%E6%89%80%E6%9C%89%E7%9A%84%E5%86%85%E5%AD%98%EF%BC%8C%E6%89%BE%E5%87%BA%E8%A2%AB%E6%A0%87%E8%AE%B0%E4%B8%BA%E7%99%BD%E8%89%B2%E7%9A%84%E5%AF%B9%E8%B1%A1%E6%B8%85%E9%99%A4%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="流程" ID="qqca69qJAI" _mubu_text="%3Cspan%3E%E6%B5%81%E7%A8%8B%3C/span%3E" STYLE="fork">
              <node TEXT="1、标记阶段" ID="ZHOQSOzkaC" _mubu_text="%3Cspan%3E1%E3%80%81%E6%A0%87%E8%AE%B0%E9%98%B6%E6%AE%B5%3C/span%3E" STYLE="fork">
                <node TEXT="标记出与GC root直接相连的对象" ID="FURPU79mHz" _mubu_text="%3Cspan%3E%E6%A0%87%E8%AE%B0%E5%87%BA%E4%B8%8EGC%20root%E7%9B%B4%E6%8E%A5%E7%9B%B8%E8%BF%9E%E7%9A%84%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork"/>
                <node TEXT="需要STW" ID="C1wHT8euzV" _mubu_text="%3Cspan%3E%E9%9C%80%E8%A6%81STW%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="2、并发标记" ID="vkf0jKZHsy" _mubu_text="%3Cspan%3E2%E3%80%81%E5%B9%B6%E5%8F%91%E6%A0%87%E8%AE%B0%3C/span%3E" STYLE="fork">
                <node TEXT="从1步标记的对象出发，遍历完整的对象图。找出所有存活对象。" ID="Ye7gacrzKE" _mubu_text="%3Cspan%3E%E4%BB%8E1%E6%AD%A5%E6%A0%87%E8%AE%B0%E7%9A%84%E5%AF%B9%E8%B1%A1%E5%87%BA%E5%8F%91%EF%BC%8C%E9%81%8D%E5%8E%86%E5%AE%8C%E6%95%B4%E7%9A%84%E5%AF%B9%E8%B1%A1%E5%9B%BE%E3%80%82%E6%89%BE%E5%87%BA%E6%89%80%E6%9C%89%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%E3%80%82%3C/span%3E" STYLE="fork">
                  <node TEXT="如果某个老年代对象的引用发生变化，标记为dirty" ID="uKrEdrvXJR" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E6%9F%90%E4%B8%AA%E8%80%81%E5%B9%B4%E4%BB%A3%E5%AF%B9%E8%B1%A1%E7%9A%84%E5%BC%95%E7%94%A8%E5%8F%91%E7%94%9F%E5%8F%98%E5%8C%96%EF%BC%8C%E6%A0%87%E8%AE%B0%E4%B8%BAdirty%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="并发标记耗时时间长，但不需要STW" ID="Irhnoo09ox" _mubu_text="%3Cspan%3E%E5%B9%B6%E5%8F%91%E6%A0%87%E8%AE%B0%E8%80%97%E6%97%B6%E6%97%B6%E9%97%B4%E9%95%BF%EF%BC%8C%E4%BD%86%E4%B8%8D%E9%9C%80%E8%A6%81STW%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="3、并发预清理" ID="I38KgSaRnM" _mubu_text="%3Cspan%3E3%E3%80%81%E5%B9%B6%E5%8F%91%E9%A2%84%E6%B8%85%E7%90%86%3C/span%3E" STYLE="fork">
                <node TEXT="清除白色对象。对于被标记为dirty的对象会被重新标记，并清除掉dirty状态。" ID="W5KUedyjO1" _mubu_text="%3Cspan%3E%E6%B8%85%E9%99%A4%E7%99%BD%E8%89%B2%E5%AF%B9%E8%B1%A1%E3%80%82%E5%AF%B9%E4%BA%8E%E8%A2%AB%E6%A0%87%E8%AE%B0%E4%B8%BAdirty%E7%9A%84%E5%AF%B9%E8%B1%A1%E4%BC%9A%E8%A2%AB%E9%87%8D%E6%96%B0%E6%A0%87%E8%AE%B0%EF%BC%8C%E5%B9%B6%E6%B8%85%E9%99%A4%E6%8E%89dirty%E7%8A%B6%E6%80%81%E3%80%82%3C/span%3E" STYLE="fork"/>
                <node TEXT="不需要STW" ID="y6SIMaSvhN" _mubu_text="%3Cspan%3E%E4%B8%8D%E9%9C%80%E8%A6%81STW%3C/span%3E" STYLE="fork"/>
                <node TEXT="为了让重新标记的时间尽可能短" ID="TUqIZlZtR6" _mubu_text="%3Cspan%3E%E4%B8%BA%E4%BA%86%E8%AE%A9%E9%87%8D%E6%96%B0%E6%A0%87%E8%AE%B0%E7%9A%84%E6%97%B6%E9%97%B4%E5%B0%BD%E5%8F%AF%E8%83%BD%E7%9F%AD%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="4、重新标记" ID="0Se3Icz4M0" _mubu_text="%3Cspan%3E4%E3%80%81%E9%87%8D%E6%96%B0%E6%A0%87%E8%AE%B0%3C/span%3E" STYLE="fork">
                <node TEXT="STW" ID="l0UQv6TzRn" _mubu_text="%3Cspan%3ESTW%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
          <node TEXT="G1" ID="pSI3Sx1o3a" _mubu_text="%3Cspan%3EG1%3C/span%3E" STYLE="fork">
            <node TEXT="G1跟踪各个Region里垃圾堆积的价值大小（根据回收可获得的空间大小以及回收所需时间的经验值），维护一个优先级列表，每次根据允许收集的时间，优先回收价值最大的Region，保证在有限的时间内获得尽可能高的收集效率" ID="pYZf852Je6" _mubu_text="%3Cspan%3EG1%E8%B7%9F%E8%B8%AA%E5%90%84%E4%B8%AARegion%E9%87%8C%E5%9E%83%E5%9C%BE%E5%A0%86%E7%A7%AF%E7%9A%84%E4%BB%B7%E5%80%BC%E5%A4%A7%E5%B0%8F%EF%BC%88%E6%A0%B9%E6%8D%AE%E5%9B%9E%E6%94%B6%E5%8F%AF%E8%8E%B7%E5%BE%97%E7%9A%84%E7%A9%BA%E9%97%B4%E5%A4%A7%E5%B0%8F%E4%BB%A5%E5%8F%8A%E5%9B%9E%E6%94%B6%E6%89%80%E9%9C%80%E6%97%B6%E9%97%B4%E7%9A%84%E7%BB%8F%E9%AA%8C%E5%80%BC%EF%BC%89%EF%BC%8C%E7%BB%B4%E6%8A%A4%E4%B8%80%E4%B8%AA%E4%BC%98%E5%85%88%E7%BA%A7%E5%88%97%E8%A1%A8%EF%BC%8C%E6%AF%8F%E6%AC%A1%E6%A0%B9%E6%8D%AE%E5%85%81%E8%AE%B8%E6%94%B6%E9%9B%86%E7%9A%84%E6%97%B6%E9%97%B4%EF%BC%8C%E4%BC%98%E5%85%88%E5%9B%9E%E6%94%B6%E4%BB%B7%E5%80%BC%E6%9C%80%E5%A4%A7%E7%9A%84Region%EF%BC%8C%E4%BF%9D%E8%AF%81%E5%9C%A8%E6%9C%89%E9%99%90%E7%9A%84%E6%97%B6%E9%97%B4%E5%86%85%E8%8E%B7%E5%BE%97%E5%B0%BD%E5%8F%AF%E8%83%BD%E9%AB%98%E7%9A%84%E6%94%B6%E9%9B%86%E6%95%88%E7%8E%87%3C/span%3E" STYLE="fork"/>
            <node TEXT="特点" ID="SvVmkGOlZk" _mubu_text="%3Cspan%3E%E7%89%B9%E7%82%B9%3C/span%3E" STYLE="fork">
              <node TEXT="并发和并行" ID="3WV45wk7Hu" _mubu_text="%3Cspan%3E%E5%B9%B6%E5%8F%91%E5%92%8C%E5%B9%B6%E8%A1%8C%3C/span%3E" STYLE="fork"/>
              <node TEXT="分代收集" ID="NCn1nN04fg" _mubu_text="%3Cspan%3E%E5%88%86%E4%BB%A3%E6%94%B6%E9%9B%86%3C/span%3E" STYLE="fork"/>
              <node TEXT="空间整合" ID="Pjv4ivc2Vk" _mubu_text="%3Cspan%3E%E7%A9%BA%E9%97%B4%E6%95%B4%E5%90%88%3C/span%3E" STYLE="fork">
                <node TEXT="Region之间是复制算法，整体上可以看做是标记压缩算法" ID="lz41cfS51P" _mubu_text="%3Cspan%3ERegion%E4%B9%8B%E9%97%B4%E6%98%AF%E5%A4%8D%E5%88%B6%E7%AE%97%E6%B3%95%EF%BC%8C%E6%95%B4%E4%BD%93%E4%B8%8A%E5%8F%AF%E4%BB%A5%E7%9C%8B%E5%81%9A%E6%98%AF%E6%A0%87%E8%AE%B0%E5%8E%8B%E7%BC%A9%E7%AE%97%E6%B3%95%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="可预测的停顿时间模型" ID="SjerP7QGMr" _mubu_text="%3Cspan%3E%E5%8F%AF%E9%A2%84%E6%B5%8B%E7%9A%84%E5%81%9C%E9%A1%BF%E6%97%B6%E9%97%B4%E6%A8%A1%E5%9E%8B%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="缺点" ID="iKTysAH1ra" _mubu_text="%3Cspan%3E%E7%BC%BA%E7%82%B9%3C/span%3E" STYLE="fork">
              <node TEXT="内存占用、程序运行时额外负载比CMS高" ID="h9XmvzWgqg" _mubu_text="%3Cspan%3E%E5%86%85%E5%AD%98%E5%8D%A0%E7%94%A8%E3%80%81%E7%A8%8B%E5%BA%8F%E8%BF%90%E8%A1%8C%E6%97%B6%E9%A2%9D%E5%A4%96%E8%B4%9F%E8%BD%BD%E6%AF%94CMS%E9%AB%98%3C/span%3E" STYLE="fork"/>
              <node TEXT="RSet花费额外时间" ID="KhwqOKLvqR" _mubu_text="%3Cspan%3ERSet%E8%8A%B1%E8%B4%B9%E9%A2%9D%E5%A4%96%E6%97%B6%E9%97%B4%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="垃圾回收过程" ID="M5uCsR7SX9" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E5%9B%9E%E6%94%B6%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork">
              <node TEXT="YoungGC" ID="br2zoFARBI" _mubu_text="%3Cspan%3EYoungGC%3C/span%3E" STYLE="fork">
                <node TEXT="Eden区用尽时，STW，并行的独占式收集。" ID="squcqt3riW" _mubu_text="%3Cspan%3EEden%E5%8C%BA%E7%94%A8%E5%B0%BD%E6%97%B6%EF%BC%8CSTW%EF%BC%8C%E5%B9%B6%E8%A1%8C%E7%9A%84%E7%8B%AC%E5%8D%A0%E5%BC%8F%E6%94%B6%E9%9B%86%E3%80%82%3C/span%3E" STYLE="fork"/>
                <node TEXT="选定所有年轻代的Region，从年轻代区间移动存活对象到Survivor区或old区" ID="o2Zx8g5To7" _mubu_text="%3Cspan%3E%E9%80%89%E5%AE%9A%E6%89%80%E6%9C%89%E5%B9%B4%E8%BD%BB%E4%BB%A3%E7%9A%84Region%EF%BC%8C%E4%BB%8E%E5%B9%B4%E8%BD%BB%E4%BB%A3%E5%8C%BA%E9%97%B4%E7%A7%BB%E5%8A%A8%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%E5%88%B0Survivor%E5%8C%BA%E6%88%96old%E5%8C%BA%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="Concurrent Marking" ID="cryDHCvkN5" _mubu_text="%3Cspan%3EConcurrent%20Marking%3C/span%3E" STYLE="fork">
                <node TEXT="初始阶段" ID="KY3y8enytC" _mubu_text="%3Cspan%3E%E5%88%9D%E5%A7%8B%E9%98%B6%E6%AE%B5%3C/span%3E" STYLE="fork">
                  <node TEXT="STW，标记GC root直接可达对象（黑色节点）" ID="HLg75MmLkF" _mubu_text="%3Cspan%3ESTW%EF%BC%8C%E6%A0%87%E8%AE%B0GC%20root%E7%9B%B4%E6%8E%A5%E5%8F%AF%E8%BE%BE%E5%AF%B9%E8%B1%A1%EF%BC%88%E9%BB%91%E8%89%B2%E8%8A%82%E7%82%B9%EF%BC%89%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="并发标记" ID="9ukHXeZCrK" _mubu_text="%3Cspan%3E%E5%B9%B6%E5%8F%91%E6%A0%87%E8%AE%B0%3C/span%3E" STYLE="fork">
                  <node TEXT="从初始标记对象开始标记，标记线程和应用线程并行" ID="iyc6JjaP88" _mubu_text="%3Cspan%3E%E4%BB%8E%E5%88%9D%E5%A7%8B%E6%A0%87%E8%AE%B0%E5%AF%B9%E8%B1%A1%E5%BC%80%E5%A7%8B%E6%A0%87%E8%AE%B0%EF%BC%8C%E6%A0%87%E8%AE%B0%E7%BA%BF%E7%A8%8B%E5%92%8C%E5%BA%94%E7%94%A8%E7%BA%BF%E7%A8%8B%E5%B9%B6%E8%A1%8C%3C/span%3E" STYLE="fork">
                    <node TEXT="三色算法" ID="XgaZFTprmM" _mubu_text="%3Cspan%3E%E4%B8%89%E8%89%B2%E7%AE%97%E6%B3%95%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
                <node TEXT="重新标记" ID="4NsxHu75bL" _mubu_text="%3Cspan%3E%E9%87%8D%E6%96%B0%E6%A0%87%E8%AE%B0%3C/span%3E" STYLE="fork">
                  <node TEXT="STW，重新标记并发过程中发生变化的对象" ID="tZUfOVw6EP" _mubu_text="%3Cspan%3ESTW%EF%BC%8C%E9%87%8D%E6%96%B0%E6%A0%87%E8%AE%B0%E5%B9%B6%E5%8F%91%E8%BF%87%E7%A8%8B%E4%B8%AD%E5%8F%91%E7%94%9F%E5%8F%98%E5%8C%96%E7%9A%84%E5%AF%B9%E8%B1%A1%3C/span%3E" STYLE="fork">
                    <node TEXT="原始快照SATB" ID="Au313f9ZQ4" _mubu_text="%3Cspan%3E%E5%8E%9F%E5%A7%8B%E5%BF%AB%E7%85%A7SATB%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
                <node TEXT="垃圾清理" ID="zRvzFLUUxK" _mubu_text="%3Cspan%3E%E5%9E%83%E5%9C%BE%E6%B8%85%E7%90%86%3C/span%3E" STYLE="fork">
                  <node TEXT="清空Region（只对没有存活对象的region），加入到Free list" ID="dEhOEdPr8o" _mubu_text="%3Cspan%3E%E6%B8%85%E7%A9%BARegion%EF%BC%88%E5%8F%AA%E5%AF%B9%E6%B2%A1%E6%9C%89%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%E7%9A%84region%EF%BC%89%EF%BC%8C%E5%8A%A0%E5%85%A5%E5%88%B0Free%20list%3C/span%3E" STYLE="fork">
                    <node TEXT="由于只对没有存活的Region，因此不需要STW" ID="zERKXpY3QR" _mubu_text="%3Cspan%3E%E7%94%B1%E4%BA%8E%E5%8F%AA%E5%AF%B9%E6%B2%A1%E6%9C%89%E5%AD%98%E6%B4%BB%E7%9A%84Region%EF%BC%8C%E5%9B%A0%E6%AD%A4%E4%B8%8D%E9%9C%80%E8%A6%81STW%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
              </node>
              <node TEXT="Mixed GC" ID="k6paAb4CoJ" _mubu_text="%3Cspan%3EMixed%20GC%3C/span%3E" STYLE="fork">
                <node TEXT="选定所有年轻代和部分老年代，从老年代移动存活对象到空闲区间。" ID="yR3dObfyrv" _mubu_text="%3Cspan%3E%E9%80%89%E5%AE%9A%E6%89%80%E6%9C%89%E5%B9%B4%E8%BD%BB%E4%BB%A3%E5%92%8C%E9%83%A8%E5%88%86%E8%80%81%E5%B9%B4%E4%BB%A3%EF%BC%8C%E4%BB%8E%E8%80%81%E5%B9%B4%E4%BB%A3%E7%A7%BB%E5%8A%A8%E5%AD%98%E6%B4%BB%E5%AF%B9%E8%B1%A1%E5%88%B0%E7%A9%BA%E9%97%B2%E5%8C%BA%E9%97%B4%E3%80%82%3C/span%3E" STYLE="fork">
                  <node TEXT="一次只回收一小部分老年代的Region" ID="Li5WFOAe0p" _mubu_text="%3Cspan%3E%E4%B8%80%E6%AC%A1%E5%8F%AA%E5%9B%9E%E6%94%B6%E4%B8%80%E5%B0%8F%E9%83%A8%E5%88%86%E8%80%81%E5%B9%B4%E4%BB%A3%E7%9A%84Region%3C/span%3E" STYLE="fork"/>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node TEXT="MySQL" ID="HIJwdu5siE" _mubu_text="%3Cspan%3EMySQL%3C/span%3E" STYLE="bubble" POSITION="right">
      <node TEXT="binlog格式" ID="NMjQF6lYke" _mubu_text="%3Cspan%3Ebinlog%E6%A0%BC%E5%BC%8F%3C/span%3E" STYLE="fork">
        <node TEXT="binlog数据格式" ID="fQTEv20VID" _mubu_text="%3Cspan%3Ebinlog%E6%95%B0%E6%8D%AE%E6%A0%BC%E5%BC%8F%3C/span%3E" STYLE="fork">
          <node TEXT="mixed" ID="0PNeVo0baa" _mubu_text="%3Cspan%3Emixed%3C/span%3E" STYLE="fork"/>
          <node TEXT="statement" ID="Mi2hYdOy6C" _mubu_text="%3Cspan%3Estatement%3C/span%3E" STYLE="fork">
            <node TEXT="保存sql，不存记录" ID="qXFr56Oz6N" _mubu_text="%3Cspan%3E%E4%BF%9D%E5%AD%98sql%EF%BC%8C%E4%B8%8D%E5%AD%98%E8%AE%B0%E5%BD%95%3C/span%3E" STYLE="fork"/>
            <node TEXT="" ID="jbFey1H6XX" _mubu_text="" STYLE="fork"/>
          </node>
          <node TEXT="row" ID="VRwzs2sexj" _mubu_text="%3Cspan%3Erow%3C/span%3E" STYLE="fork">
            <node TEXT="保存哪条记录被修改，以及修改前后" ID="Ohk2SDmunH" _mubu_text="%3Cspan%3E%E4%BF%9D%E5%AD%98%E5%93%AA%E6%9D%A1%E8%AE%B0%E5%BD%95%E8%A2%AB%E4%BF%AE%E6%94%B9%EF%BC%8C%E4%BB%A5%E5%8F%8A%E4%BF%AE%E6%94%B9%E5%89%8D%E5%90%8E%3C/span%3E" STYLE="fork"/>
            <node TEXT="存储event" ID="YypxYJBDzZ" _mubu_text="%3Cspan%3E%E5%AD%98%E5%82%A8event%3C/span%3E" STYLE="fork">
              <node TEXT="读、查询、开启事务" ID="7r4Ktjmo38" _mubu_text="%3Cspan%3E%E8%AF%BB%E3%80%81%E6%9F%A5%E8%AF%A2%E3%80%81%E5%BC%80%E5%90%AF%E4%BA%8B%E5%8A%A1%3C/span%3E" STYLE="fork">
                <node TEXT="query" ID="SLRZwy5RcV" _mubu_text="%3Cspan%3Equery%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="事务提交" ID="b5LNQKBOxO" _mubu_text="%3Cspan%3E%E4%BA%8B%E5%8A%A1%E6%8F%90%E4%BA%A4%3C/span%3E" STYLE="fork">
                <node TEXT="xid" ID="vHnmDpdbSm" _mubu_text="%3Cspan%3Exid%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
        <node TEXT="binlog同步工具" ID="1aZA3ycltm" _mubu_text="%3Cspan%3Ebinlog%E5%90%8C%E6%AD%A5%E5%B7%A5%E5%85%B7%3C/span%3E" STYLE="fork">
          <node TEXT="canal" ID="UimyiRpLOF" _mubu_text="%3Cspan%3Ecanal%3C/span%3E" STYLE="fork">
            <node TEXT="介绍" ID="A3T8PP4ERl" _mubu_text="%3Cspan%3E%E4%BB%8B%E7%BB%8D%3C/span%3E" STYLE="fork">
              <node TEXT="模仿MySQL的slave，从master上拉取binlog，并将binlog投放到不同地方" ID="JiZ35juoHn" _mubu_text="%3Cspan%3E%E6%A8%A1%E4%BB%BFMySQL%E7%9A%84slave%EF%BC%8C%E4%BB%8Emaster%E4%B8%8A%E6%8B%89%E5%8F%96binlog%EF%BC%8C%E5%B9%B6%E5%B0%86binlog%E6%8A%95%E6%94%BE%E5%88%B0%E4%B8%8D%E5%90%8C%E5%9C%B0%E6%96%B9%3C/span%3E" STYLE="fork"/>
              <node TEXT="增量日志解析，提供增量数据订阅和消费" ID="zYrzonT0gA" _mubu_text="%3Cspan%3E%E5%A2%9E%E9%87%8F%E6%97%A5%E5%BF%97%E8%A7%A3%E6%9E%90%EF%BC%8C%E6%8F%90%E4%BE%9B%E5%A2%9E%E9%87%8F%E6%95%B0%E6%8D%AE%E8%AE%A2%E9%98%85%E5%92%8C%E6%B6%88%E8%B4%B9%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="架构" ID="PqmRgBVJh0" _mubu_text="%3Cspan%3E%E6%9E%B6%E6%9E%84%3C/span%3E" STYLE="fork">
              <node TEXT="Server" ID="H1QNANLeoV" _mubu_text="%3Cspan%3EServer%3C/span%3E" STYLE="fork"/>
              <node TEXT="Instance" ID="XhvdkqVuAK" _mubu_text="%3Cspan%3EInstance%3C/span%3E" STYLE="fork"/>
              <node TEXT="Parse" ID="xGOU3TVqSE" _mubu_text="%3Cspan%3EParse%3C/span%3E" STYLE="fork">
                <node TEXT="拉取binlog，进行解析" ID="STXBKMSDxn" _mubu_text="%3Cspan%3E%E6%8B%89%E5%8F%96binlog%EF%BC%8C%E8%BF%9B%E8%A1%8C%E8%A7%A3%E6%9E%90%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="EventSink" ID="zU65zTg9K9" _mubu_text="%3Cspan%3EEventSink%3C/span%3E" STYLE="fork">
                <node TEXT="将解析数据过滤、合并" ID="JlZ0uqpSG0" _mubu_text="%3Cspan%3E%E5%B0%86%E8%A7%A3%E6%9E%90%E6%95%B0%E6%8D%AE%E8%BF%87%E6%BB%A4%E3%80%81%E5%90%88%E5%B9%B6%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="EventStore" ID="eLPVTmCQC5" _mubu_text="%3Cspan%3EEventStore%3C/span%3E" STYLE="fork">
                <node TEXT="类似slave中的relay log" ID="xrFktxbrfx" _mubu_text="%3Cspan%3E%E7%B1%BB%E4%BC%BCslave%E4%B8%AD%E7%9A%84relay%20log%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="Parser" ID="eBfAAwG0dC" _mubu_text="%3Cspan%3EParser%3C/span%3E" STYLE="fork">
              <node TEXT="构建数据库连接，生成slave_id" ID="SOyPShueoo" _mubu_text="%3Cspan%3E%E6%9E%84%E5%BB%BA%E6%95%B0%E6%8D%AE%E5%BA%93%E8%BF%9E%E6%8E%A5%EF%BC%8C%E7%94%9F%E6%88%90slave_id%3C/span%3E" STYLE="fork"/>
              <node TEXT="获取数据库元信息，如binlogFormat、binRowImage等" ID="TvqCAVjYWe" _mubu_text="%3Cspan%3E%E8%8E%B7%E5%8F%96%E6%95%B0%E6%8D%AE%E5%BA%93%E5%85%83%E4%BF%A1%E6%81%AF%EF%BC%8C%E5%A6%82binlogFormat%E3%80%81binRowImage%E7%AD%89%3C/span%3E" STYLE="fork"/>
              <node TEXT="获取需要监听的binlog服务serverId" ID="tTPLcPxotr" _mubu_text="%3Cspan%3E%E8%8E%B7%E5%8F%96%E9%9C%80%E8%A6%81%E7%9B%91%E5%90%AC%E7%9A%84binlog%E6%9C%8D%E5%8A%A1serverId%3C/span%3E" STYLE="fork"/>
              <node TEXT="获取这一次需要消费的位置，position" ID="MM9U2iSuH4" _mubu_text="%3Cspan%3E%E8%8E%B7%E5%8F%96%E8%BF%99%E4%B8%80%E6%AC%A1%E9%9C%80%E8%A6%81%E6%B6%88%E8%B4%B9%E7%9A%84%E4%BD%8D%E7%BD%AE%EF%BC%8Cposition%3C/span%3E" STYLE="fork"/>
              <node TEXT="进行dump操作，模拟slave发送slave请求，dump binlog请求" ID="PPNv6Dx5O0" _mubu_text="%3Cspan%3E%E8%BF%9B%E8%A1%8Cdump%E6%93%8D%E4%BD%9C%EF%BC%8C%E6%A8%A1%E6%8B%9Fslave%E5%8F%91%E9%80%81slave%E8%AF%B7%E6%B1%82%EF%BC%8Cdump%20binlog%E8%AF%B7%E6%B1%82%3C/span%3E" STYLE="fork"/>
              <node TEXT="将获取到的二进制数据，根据binlog协议，转换成logEntry，方便后序处理" ID="L1C64mKsKS" _mubu_text="%3Cspan%3E%E5%B0%86%E8%8E%B7%E5%8F%96%E5%88%B0%E7%9A%84%E4%BA%8C%E8%BF%9B%E5%88%B6%E6%95%B0%E6%8D%AE%EF%BC%8C%E6%A0%B9%E6%8D%AEbinlog%E5%8D%8F%E8%AE%AE%EF%BC%8C%E8%BD%AC%E6%8D%A2%E6%88%90logEntry%EF%BC%8C%E6%96%B9%E4%BE%BF%E5%90%8E%E5%BA%8F%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="EventSink" ID="z0fXhNn4K4" _mubu_text="%3Cspan%3EEventSink%3C/span%3E" STYLE="fork">
              <node TEXT="对获取到logEntry加工、过滤" ID="3Azxe61r46" _mubu_text="%3Cspan%3E%E5%AF%B9%E8%8E%B7%E5%8F%96%E5%88%B0logEntry%E5%8A%A0%E5%B7%A5%E3%80%81%E8%BF%87%E6%BB%A4%3C/span%3E" STYLE="fork">
                <node TEXT="过滤空事务" ID="o4pEGoVTlA" _mubu_text="%3Cspan%3E%E8%BF%87%E6%BB%A4%E7%A9%BA%E4%BA%8B%E5%8A%A1%3C/span%3E" STYLE="fork"/>
                <node TEXT="过滤心跳" ID="5aBlItrE1z" _mubu_text="%3Cspan%3E%E8%BF%87%E6%BB%A4%E5%BF%83%E8%B7%B3%3C/span%3E" STYLE="fork"/>
                <node TEXT="自定义过滤规则" ID="ip2aIEhucD" _mubu_text="%3Cspan%3E%E8%87%AA%E5%AE%9A%E4%B9%89%E8%BF%87%E6%BB%A4%E8%A7%84%E5%88%99%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="合并" ID="1xH1bWlpO7" _mubu_text="%3Cspan%3E%E5%90%88%E5%B9%B6%3C/span%3E" STYLE="fork">
                <node TEXT="对于分库分表的业务，数据来源可能是不同的Parser，需要汇总到同一个EventStore中" ID="DjNUzMVy7g" _mubu_text="%3Cspan%3E%E5%AF%B9%E4%BA%8E%E5%88%86%E5%BA%93%E5%88%86%E8%A1%A8%E7%9A%84%E4%B8%9A%E5%8A%A1%EF%BC%8C%E6%95%B0%E6%8D%AE%E6%9D%A5%E6%BA%90%E5%8F%AF%E8%83%BD%E6%98%AF%E4%B8%8D%E5%90%8C%E7%9A%84Parser%EF%BC%8C%E9%9C%80%E8%A6%81%E6%B1%87%E6%80%BB%E5%88%B0%E5%90%8C%E4%B8%80%E4%B8%AAEventStore%E4%B8%AD%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="EventStroe" ID="YXmqqfrrJv" _mubu_text="%3Cspan%3EEventStroe%3C/span%3E" STYLE="fork">
              <node TEXT="在内存进行中转数据" ID="vqsZdkQuGU" _mubu_text="%3Cspan%3E%E5%9C%A8%E5%86%85%E5%AD%98%E8%BF%9B%E8%A1%8C%E4%B8%AD%E8%BD%AC%E6%95%B0%E6%8D%AE%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="debezium" ID="az1SbHfJa5" _mubu_text="%3Cspan%3Edebezium%3C/span%3E" STYLE="fork">
            <node TEXT="支持MySQL、Oracle、MongoDB等主流数据库" ID="zSEnnWRg1b" _mubu_text="%3Cspan%3E%E6%94%AF%E6%8C%81MySQL%E3%80%81Oracle%E3%80%81MongoDB%E7%AD%89%E4%B8%BB%E6%B5%81%E6%95%B0%E6%8D%AE%E5%BA%93%3C/span%3E" STYLE="fork"/>
            <node TEXT="与KafKa很好集成" ID="VMws3VggLl" _mubu_text="%3Cspan%3E%E4%B8%8EKafKa%E5%BE%88%E5%A5%BD%E9%9B%86%E6%88%90%3C/span%3E" STYLE="fork"/>
            <node TEXT="文档多是英文" ID="nd8EKMvqjj" _mubu_text="%3Cspan%3E%E6%96%87%E6%A1%A3%E5%A4%9A%E6%98%AF%E8%8B%B1%E6%96%87%3C/span%3E" STYLE="fork">
              <node TEXT="学习成本高一低" ID="LUIip08W4E" _mubu_text="%3Cspan%3E%E5%AD%A6%E4%B9%A0%E6%88%90%E6%9C%AC%E9%AB%98%E4%B8%80%E4%BD%8E%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="databus" ID="ZxmkWuBikm" _mubu_text="%3Cspan%3Edatabus%3C/span%3E" STYLE="fork">
            <node TEXT="领英开源" ID="Vqkn4pNiuM" _mubu_text="%3Cspan%3E%E9%A2%86%E8%8B%B1%E5%BC%80%E6%BA%90%3C/span%3E" STYLE="fork"/>
            <node TEXT="支持MySQL、Oracle" ID="VvF42aHWil" _mubu_text="%3Cspan%3E%E6%94%AF%E6%8C%81MySQL%E3%80%81Oracle%3C/span%3E" STYLE="fork"/>
            <node TEXT="项目很久没维护，文档一般" ID="D0suvfKGsI" _mubu_text="%3Cspan%3E%E9%A1%B9%E7%9B%AE%E5%BE%88%E4%B9%85%E6%B2%A1%E7%BB%B4%E6%8A%A4%EF%BC%8C%E6%96%87%E6%A1%A3%E4%B8%80%E8%88%AC%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="maxwell" ID="LUldqA8uqx" _mubu_text="%3Cspan%3Emaxwell%3C/span%3E" STYLE="fork">
            <node TEXT="简单配置就能运行" ID="Ku0eyP67OX" _mubu_text="%3Cspan%3E%E7%AE%80%E5%8D%95%E9%85%8D%E7%BD%AE%E5%B0%B1%E8%83%BD%E8%BF%90%E8%A1%8C%3C/span%3E" STYLE="fork"/>
            <node TEXT="支持KafKa、RabbitMQ、Redis等队列" ID="1jsU0PkT6Q" _mubu_text="%3Cspan%3E%E6%94%AF%E6%8C%81KafKa%E3%80%81RabbitMQ%E3%80%81Redis%E7%AD%89%E9%98%9F%E5%88%97%3C/span%3E" STYLE="fork"/>
            <node TEXT="文档英文" ID="UqhfEn84E1" _mubu_text="%3Cspan%3E%E6%96%87%E6%A1%A3%E8%8B%B1%E6%96%87%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="CDC技术" ID="cOvmcTW31f" _mubu_text="%3Cspan%3ECDC%E6%8A%80%E6%9C%AF%3C/span%3E" STYLE="fork">
          <node TEXT="change data capture" ID="iXyjwszF84" _mubu_text="%3Cspan%3Echange%20data%20capture%3C/span%3E" STYLE="fork">
            <node TEXT="基于数据库数据变更的事件型软件设计模式" ID="kWwQNQFpsK" _mubu_text="%3Cspan%3E%E5%9F%BA%E4%BA%8E%E6%95%B0%E6%8D%AE%E5%BA%93%E6%95%B0%E6%8D%AE%E5%8F%98%E6%9B%B4%E7%9A%84%E4%BA%8B%E4%BB%B6%E5%9E%8B%E8%BD%AF%E4%BB%B6%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="WAL机制" ID="9DsINgyrSD" _mubu_text="%3Cspan%3EWAL%E6%9C%BA%E5%88%B6%3C/span%3E" STYLE="fork"/>
      <node TEXT="两阶段提交" ID="8vspr50qlr" _mubu_text="%3Cspan%3E%E4%B8%A4%E9%98%B6%E6%AE%B5%E6%8F%90%E4%BA%A4%3C/span%3E" STYLE="fork">
        <node TEXT="行锁" ID="vm6QdJI4fq" _mubu_text="%3Cspan%3E%E8%A1%8C%E9%94%81%3C/span%3E" STYLE="fork">
          <node TEXT="引擎层实现，MyISAM不支持" ID="wB1SRvVRjW" _mubu_text="%3Cspan%3E%E5%BC%95%E6%93%8E%E5%B1%82%E5%AE%9E%E7%8E%B0%EF%BC%8CMyISAM%E4%B8%8D%E6%94%AF%E6%8C%81%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="两阶段锁" ID="qBEAkiXVq7" _mubu_text="%3Cspan%3E%E4%B8%A4%E9%98%B6%E6%AE%B5%E9%94%81%3C/span%3E" STYLE="fork">
          <node TEXT="" ID="W4N8bAxMmU" _mubu_text="" STYLE="fork"/>
          <node TEXT="两阶段锁协议" ID="bZEVPS11xb" _mubu_text="%3Cspan%3E%E4%B8%A4%E9%98%B6%E6%AE%B5%E9%94%81%E5%8D%8F%E8%AE%AE%3C/span%3E" STYLE="fork">
            <node TEXT="加锁阶段" ID="RndgzhxdUh" _mubu_text="%3Cspan%3E%E5%8A%A0%E9%94%81%E9%98%B6%E6%AE%B5%3C/span%3E" STYLE="fork"/>
            <node TEXT="解锁阶段" ID="0jRVfaVfKS" _mubu_text="%3Cspan%3E%E8%A7%A3%E9%94%81%E9%98%B6%E6%AE%B5%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="所有的行锁都是在事务提交时才释放" ID="WgFiMN3QZ7" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E7%9A%84%E8%A1%8C%E9%94%81%E9%83%BD%E6%98%AF%E5%9C%A8%E4%BA%8B%E5%8A%A1%E6%8F%90%E4%BA%A4%E6%97%B6%E6%89%8D%E9%87%8A%E6%94%BE%3C/span%3E" STYLE="fork"/>
          <node TEXT="所以，存在死锁的可能性" ID="FCRE69AGYJ" _mubu_text="%3Cspan%3E%E6%89%80%E4%BB%A5%EF%BC%8C%E5%AD%98%E5%9C%A8%E6%AD%BB%E9%94%81%E7%9A%84%E5%8F%AF%E8%83%BD%E6%80%A7%3C/span%3E" STYLE="fork">
            <node TEXT="解决策略" ID="SKoKrUSTEI" _mubu_text="%3Cspan%3E%E8%A7%A3%E5%86%B3%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
              <node TEXT="通过设置超时时间，innoDB默认值为50s，第一个被锁住的事务A等待超过50s才会超时退出，其他事务才得以执行。" ID="zYvm4cWdZP" _mubu_text="%3Cspan%3E%E9%80%9A%E8%BF%87%E8%AE%BE%E7%BD%AE%E8%B6%85%E6%97%B6%E6%97%B6%E9%97%B4%EF%BC%8CinnoDB%E9%BB%98%E8%AE%A4%E5%80%BC%E4%B8%BA50s%EF%BC%8C%E7%AC%AC%E4%B8%80%E4%B8%AA%E8%A2%AB%E9%94%81%E4%BD%8F%E7%9A%84%E4%BA%8B%E5%8A%A1A%E7%AD%89%E5%BE%85%E8%B6%85%E8%BF%8750s%E6%89%8D%E4%BC%9A%E8%B6%85%E6%97%B6%E9%80%80%E5%87%BA%EF%BC%8C%E5%85%B6%E4%BB%96%E4%BA%8B%E5%8A%A1%E6%89%8D%E5%BE%97%E4%BB%A5%E6%89%A7%E8%A1%8C%E3%80%82%3C/span%3E" STYLE="fork">
                <node TEXT="在线服务难以接受这样的等待时间" ID="Jdt76Kk46S" _mubu_text="%3Cspan%3E%E5%9C%A8%E7%BA%BF%E6%9C%8D%E5%8A%A1%E9%9A%BE%E4%BB%A5%E6%8E%A5%E5%8F%97%E8%BF%99%E6%A0%B7%E7%9A%84%E7%AD%89%E5%BE%85%E6%97%B6%E9%97%B4%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="死锁检测" ID="1zdTonYTof" _mubu_text="%3Cspan%3E%E6%AD%BB%E9%94%81%E6%A3%80%E6%B5%8B%3C/span%3E" STYLE="fork">
                <node TEXT="发现死锁后主动回滚死锁链条中的某一个事务，让其他事务得以继续执行" ID="9YRctFsGTh" _mubu_text="%3Cspan%3E%E5%8F%91%E7%8E%B0%E6%AD%BB%E9%94%81%E5%90%8E%E4%B8%BB%E5%8A%A8%E5%9B%9E%E6%BB%9A%E6%AD%BB%E9%94%81%E9%93%BE%E6%9D%A1%E4%B8%AD%E7%9A%84%E6%9F%90%E4%B8%80%E4%B8%AA%E4%BA%8B%E5%8A%A1%EF%BC%8C%E8%AE%A9%E5%85%B6%E4%BB%96%E4%BA%8B%E5%8A%A1%E5%BE%97%E4%BB%A5%E7%BB%A7%E7%BB%AD%E6%89%A7%E8%A1%8C%3C/span%3E" STYLE="fork"/>
                <node TEXT="死锁检测存在着额外负担。" ID="vBasO4YCOL" _mubu_text="%3Cspan%3E%E6%AD%BB%E9%94%81%E6%A3%80%E6%B5%8B%E5%AD%98%E5%9C%A8%E7%9D%80%E9%A2%9D%E5%A4%96%E8%B4%9F%E6%8B%85%E3%80%82%3C/span%3E" STYLE="fork">
                  <node TEXT="假设有1000个并发线程更新同一行，每个线程到来时都会检测依赖的记录是否被其他线程锁住" ID="rde1wqxYH9" _mubu_text="%3Cspan%3E%E5%81%87%E8%AE%BE%E6%9C%891000%E4%B8%AA%E5%B9%B6%E5%8F%91%E7%BA%BF%E7%A8%8B%E6%9B%B4%E6%96%B0%E5%90%8C%E4%B8%80%E8%A1%8C%EF%BC%8C%E6%AF%8F%E4%B8%AA%E7%BA%BF%E7%A8%8B%E5%88%B0%E6%9D%A5%E6%97%B6%E9%83%BD%E4%BC%9A%E6%A3%80%E6%B5%8B%E4%BE%9D%E8%B5%96%E7%9A%84%E8%AE%B0%E5%BD%95%E6%98%AF%E5%90%A6%E8%A2%AB%E5%85%B6%E4%BB%96%E7%BA%BF%E7%A8%8B%E9%94%81%E4%BD%8F%3C/span%3E" STYLE="fork">
                    <node TEXT="O(n^2)" ID="rOg4zvsHWk" _mubu_text="%3Cspan%3EO(%3C/span%3E%3Cspan%20class=%22%20formula%22%20data-raw=%22n%255E2%22%20contenteditable=%22false%22%3E%E2%80%8B%E2%80%8B%E2%80%8B%3C/span%3E%3Cspan%3E)%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="如何解决热点行更新导致的性能问题？" ID="JdVjFeU1ps" _mubu_text="%3Cspan%3E%E5%A6%82%E4%BD%95%E8%A7%A3%E5%86%B3%E7%83%AD%E7%82%B9%E8%A1%8C%E6%9B%B4%E6%96%B0%E5%AF%BC%E8%87%B4%E7%9A%84%E6%80%A7%E8%83%BD%E9%97%AE%E9%A2%98%EF%BC%9F%3C/span%3E" STYLE="fork">
                    <node TEXT="确定一定不会有死锁，可以临时把死锁关掉。" ID="MM2H0FbPRO" _mubu_text="%3Cspan%3E%E7%A1%AE%E5%AE%9A%E4%B8%80%E5%AE%9A%E4%B8%8D%E4%BC%9A%E6%9C%89%E6%AD%BB%E9%94%81%EF%BC%8C%E5%8F%AF%E4%BB%A5%E4%B8%B4%E6%97%B6%E6%8A%8A%E6%AD%BB%E9%94%81%E5%85%B3%E6%8E%89%E3%80%82%3C/span%3E" STYLE="fork">
                      <node TEXT="死锁一般不会被当做严重错误，通过回滚处理，对业务无损" ID="AVYGdcP0ko" _mubu_text="%3Cspan%3E%E6%AD%BB%E9%94%81%E4%B8%80%E8%88%AC%E4%B8%8D%E4%BC%9A%E8%A2%AB%E5%BD%93%E5%81%9A%E4%B8%A5%E9%87%8D%E9%94%99%E8%AF%AF%EF%BC%8C%E9%80%9A%E8%BF%87%E5%9B%9E%E6%BB%9A%E5%A4%84%E7%90%86%EF%BC%8C%E5%AF%B9%E4%B8%9A%E5%8A%A1%E6%97%A0%E6%8D%9F%3C/span%3E" STYLE="fork"/>
                      <node TEXT="关掉死锁检测，意味着可能出现大量超时，对业务有损" ID="zZKI9gDIGT" _mubu_text="%3Cspan%3E%E5%85%B3%E6%8E%89%E6%AD%BB%E9%94%81%E6%A3%80%E6%B5%8B%EF%BC%8C%E6%84%8F%E5%91%B3%E7%9D%80%E5%8F%AF%E8%83%BD%E5%87%BA%E7%8E%B0%E5%A4%A7%E9%87%8F%E8%B6%85%E6%97%B6%EF%BC%8C%E5%AF%B9%E4%B8%9A%E5%8A%A1%E6%9C%89%E6%8D%9F%3C/span%3E" STYLE="fork"/>
                    </node>
                    <node TEXT="控制并发度，限制同一行的更新最多只允许10个线程" ID="MatWxLvKIN" _mubu_text="%3Cspan%3E%E6%8E%A7%E5%88%B6%E5%B9%B6%E5%8F%91%E5%BA%A6%EF%BC%8C%E9%99%90%E5%88%B6%E5%90%8C%E4%B8%80%E8%A1%8C%E7%9A%84%E6%9B%B4%E6%96%B0%E6%9C%80%E5%A4%9A%E5%8F%AA%E5%85%81%E8%AE%B810%E4%B8%AA%E7%BA%BF%E7%A8%8B%3C/span%3E" STYLE="fork">
                      <node TEXT="1、在客户端做并发控制。" ID="UQyGwz3QK2" _mubu_text="%3Cspan%3E1%E3%80%81%E5%9C%A8%E5%AE%A2%E6%88%B7%E7%AB%AF%E5%81%9A%E5%B9%B6%E5%8F%91%E6%8E%A7%E5%88%B6%E3%80%82%3C/span%3E" STYLE="fork">
                        <node TEXT="当客户端600个，限制并发5个线程。汇总到服务端后，峰值并发也可能高达3000" ID="6N2VDAc1mQ" _mubu_text="%3Cspan%3E%E5%BD%93%E5%AE%A2%E6%88%B7%E7%AB%AF600%E4%B8%AA%EF%BC%8C%E9%99%90%E5%88%B6%E5%B9%B6%E5%8F%915%E4%B8%AA%E7%BA%BF%E7%A8%8B%E3%80%82%E6%B1%87%E6%80%BB%E5%88%B0%E6%9C%8D%E5%8A%A1%E7%AB%AF%E5%90%8E%EF%BC%8C%E5%B3%B0%E5%80%BC%E5%B9%B6%E5%8F%91%E4%B9%9F%E5%8F%AF%E8%83%BD%E9%AB%98%E8%BE%BE3000%3C/span%3E" STYLE="fork"/>
                      </node>
                      <node TEXT="2、在服务端做并发控制" ID="1xjOpvcWTz" _mubu_text="%3Cspan%3E2%E3%80%81%E5%9C%A8%E6%9C%8D%E5%8A%A1%E7%AB%AF%E5%81%9A%E5%B9%B6%E5%8F%91%E6%8E%A7%E5%88%B6%3C/span%3E" STYLE="fork">
                        <node TEXT="引入中间件实现，在进入引擎之前排队" ID="JRQTPVGeWs" _mubu_text="%3Cspan%3E%E5%BC%95%E5%85%A5%E4%B8%AD%E9%97%B4%E4%BB%B6%E5%AE%9E%E7%8E%B0%EF%BC%8C%E5%9C%A8%E8%BF%9B%E5%85%A5%E5%BC%95%E6%93%8E%E4%B9%8B%E5%89%8D%E6%8E%92%E9%98%9F%3C/span%3E" STYLE="fork"/>
                      </node>
                    </node>
                    <node TEXT="将一行改成逻辑上的多行来处理" ID="1gQFIvhpOp" _mubu_text="%3Cspan%3E%E5%B0%86%E4%B8%80%E8%A1%8C%E6%94%B9%E6%88%90%E9%80%BB%E8%BE%91%E4%B8%8A%E7%9A%84%E5%A4%9A%E8%A1%8C%E6%9D%A5%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork">
                      <node TEXT="比如，影院的账户余额等于10行记录的值综合。这样每次给影院账户加金额的时候，随机选取其中一条，冲突概率变为原来的1/10，减少锁的等待个数，也减少了死锁检测的CPU消耗" ID="F3W60gsaJU" _mubu_text="%3Cspan%3E%E6%AF%94%E5%A6%82%EF%BC%8C%E5%BD%B1%E9%99%A2%E7%9A%84%E8%B4%A6%E6%88%B7%E4%BD%99%E9%A2%9D%E7%AD%89%E4%BA%8E10%E8%A1%8C%E8%AE%B0%E5%BD%95%E7%9A%84%E5%80%BC%E7%BB%BC%E5%90%88%E3%80%82%E8%BF%99%E6%A0%B7%E6%AF%8F%E6%AC%A1%E7%BB%99%E5%BD%B1%E9%99%A2%E8%B4%A6%E6%88%B7%E5%8A%A0%E9%87%91%E9%A2%9D%E7%9A%84%E6%97%B6%E5%80%99%EF%BC%8C%E9%9A%8F%E6%9C%BA%E9%80%89%E5%8F%96%E5%85%B6%E4%B8%AD%E4%B8%80%E6%9D%A1%EF%BC%8C%E5%86%B2%E7%AA%81%E6%A6%82%E7%8E%87%E5%8F%98%E4%B8%BA%E5%8E%9F%E6%9D%A5%E7%9A%841/10%EF%BC%8C%E5%87%8F%E5%B0%91%E9%94%81%E7%9A%84%E7%AD%89%E5%BE%85%E4%B8%AA%E6%95%B0%EF%BC%8C%E4%B9%9F%E5%87%8F%E5%B0%91%E4%BA%86%E6%AD%BB%E9%94%81%E6%A3%80%E6%B5%8B%E7%9A%84CPU%E6%B6%88%E8%80%97%3C/span%3E" STYLE="fork">
                        <node TEXT="看似无损，但需要根据业务逻辑做详细设计" ID="2rBiAy4Rgf" _mubu_text="%3Cspan%3E%E7%9C%8B%E4%BC%BC%E6%97%A0%E6%8D%9F%EF%BC%8C%E4%BD%86%E9%9C%80%E8%A6%81%E6%A0%B9%E6%8D%AE%E4%B8%9A%E5%8A%A1%E9%80%BB%E8%BE%91%E5%81%9A%E8%AF%A6%E7%BB%86%E8%AE%BE%E8%AE%A1%3C/span%3E" STYLE="fork"/>
                        <node TEXT="如果，账户余额减少，如退票。就需要考虑当一部分行记录变为0的时候，代码需要特殊处理" ID="LSpMFPR0kM" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%EF%BC%8C%E8%B4%A6%E6%88%B7%E4%BD%99%E9%A2%9D%E5%87%8F%E5%B0%91%EF%BC%8C%E5%A6%82%E9%80%80%E7%A5%A8%E3%80%82%E5%B0%B1%E9%9C%80%E8%A6%81%E8%80%83%E8%99%91%E5%BD%93%E4%B8%80%E9%83%A8%E5%88%86%E8%A1%8C%E8%AE%B0%E5%BD%95%E5%8F%98%E4%B8%BA0%E7%9A%84%E6%97%B6%E5%80%99%EF%BC%8C%E4%BB%A3%E7%A0%81%E9%9C%80%E8%A6%81%E7%89%B9%E6%AE%8A%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork"/>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="主从同步" ID="QySIySWiYx" _mubu_text="%3Cspan%3E%E4%B8%BB%E4%BB%8E%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork">
        <node TEXT="复制延迟问题" ID="VCJYvWFZpz" _mubu_text="%3Cspan%3E%E5%A4%8D%E5%88%B6%E5%BB%B6%E8%BF%9F%E9%97%AE%E9%A2%98%3C/span%3E" STYLE="fork">
          <node TEXT="master节点上产生binlog速度大于slave处理binlog速度" ID="nRjtk4hu7P" _mubu_text="%3Cspan%3Emaster%E8%8A%82%E7%82%B9%E4%B8%8A%E4%BA%A7%E7%94%9Fbinlog%E9%80%9F%E5%BA%A6%E5%A4%A7%E4%BA%8Eslave%E5%A4%84%E7%90%86binlog%E9%80%9F%E5%BA%A6%3C/span%3E" STYLE="fork"/>
          <node TEXT="Relay log执行规则" ID="WUiFKSJLcK" _mubu_text="%3Cspan%3ERelay%20log%E6%89%A7%E8%A1%8C%E8%A7%84%E5%88%99%3C/span%3E" STYLE="fork">
            <node TEXT="MySQL5.6之前，从服务器只支持库级复制、效率低、单线程的SQL Thread，虽然支持多线程，但在库级复制中用处不大" ID="WrRLJOJCa4" _mubu_text="%3Cspan%3EMySQL5.6%E4%B9%8B%E5%89%8D%EF%BC%8C%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%AA%E6%94%AF%E6%8C%81%E5%BA%93%E7%BA%A7%E5%A4%8D%E5%88%B6%E3%80%81%E6%95%88%E7%8E%87%E4%BD%8E%E3%80%81%E5%8D%95%E7%BA%BF%E7%A8%8B%E7%9A%84SQL%20Thread%EF%BC%8C%E8%99%BD%E7%84%B6%E6%94%AF%E6%8C%81%E5%A4%9A%E7%BA%BF%E7%A8%8B%EF%BC%8C%E4%BD%86%E5%9C%A8%E5%BA%93%E7%BA%A7%E5%A4%8D%E5%88%B6%E4%B8%AD%E7%94%A8%E5%A4%84%E4%B8%8D%E5%A4%A7%3C/span%3E" STYLE="fork"/>
            <node TEXT="MySQL5.7之后，引入了并行复制，由coordinate负责分发任务给各个线程" ID="ujBSxYXa6s" _mubu_text="%3Cspan%3EMySQL5.7%E4%B9%8B%E5%90%8E%EF%BC%8C%E5%BC%95%E5%85%A5%E4%BA%86%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%EF%BC%8C%E7%94%B1coordinate%E8%B4%9F%E8%B4%A3%E5%88%86%E5%8F%91%E4%BB%BB%E5%8A%A1%E7%BB%99%E5%90%84%E4%B8%AA%E7%BA%BF%E7%A8%8B%3C/span%3E" STYLE="fork">
              <node TEXT="分发要求" ID="MpqFu5MTib" _mubu_text="%3Cspan%3E%E5%88%86%E5%8F%91%E8%A6%81%E6%B1%82%3C/span%3E" STYLE="fork">
                <node TEXT="不能造成更新覆盖，同一行的更新必须被分发到同一个worker中" ID="mKp73HrGUr" _mubu_text="%3Cspan%3E%E4%B8%8D%E8%83%BD%E9%80%A0%E6%88%90%E6%9B%B4%E6%96%B0%E8%A6%86%E7%9B%96%EF%BC%8C%E5%90%8C%E4%B8%80%E8%A1%8C%E7%9A%84%E6%9B%B4%E6%96%B0%E5%BF%85%E9%A1%BB%E8%A2%AB%E5%88%86%E5%8F%91%E5%88%B0%E5%90%8C%E4%B8%80%E4%B8%AAworker%E4%B8%AD%3C/span%3E" STYLE="fork">
                  <node TEXT="事务有执行顺序，执行顺序不同会对结果造成影响。协调者分发时，需要考虑更新同一行的多个事务必须分发到同一个worker" ID="5N6pX5Kagl" _mubu_text="%3Cspan%3E%E4%BA%8B%E5%8A%A1%E6%9C%89%E6%89%A7%E8%A1%8C%E9%A1%BA%E5%BA%8F%EF%BC%8C%E6%89%A7%E8%A1%8C%E9%A1%BA%E5%BA%8F%E4%B8%8D%E5%90%8C%E4%BC%9A%E5%AF%B9%E7%BB%93%E6%9E%9C%E9%80%A0%E6%88%90%E5%BD%B1%E5%93%8D%E3%80%82%E5%8D%8F%E8%B0%83%E8%80%85%E5%88%86%E5%8F%91%E6%97%B6%EF%BC%8C%E9%9C%80%E8%A6%81%E8%80%83%E8%99%91%E6%9B%B4%E6%96%B0%E5%90%8C%E4%B8%80%E8%A1%8C%E7%9A%84%E5%A4%9A%E4%B8%AA%E4%BA%8B%E5%8A%A1%E5%BF%85%E9%A1%BB%E5%88%86%E5%8F%91%E5%88%B0%E5%90%8C%E4%B8%80%E4%B8%AAworker%3C/span%3E" STYLE="fork"/>
                </node>
                <node TEXT="同一个事务不能被拆开，必须分发到同一个worker中" ID="WEh9j2vxUx" _mubu_text="%3Cspan%3E%E5%90%8C%E4%B8%80%E4%B8%AA%E4%BA%8B%E5%8A%A1%E4%B8%8D%E8%83%BD%E8%A2%AB%E6%8B%86%E5%BC%80%EF%BC%8C%E5%BF%85%E9%A1%BB%E5%88%86%E5%8F%91%E5%88%B0%E5%90%8C%E4%B8%80%E4%B8%AAworker%E4%B8%AD%3C/span%3E" STYLE="fork">
                  <node TEXT="同一个事务不同操作，必须分发到同一个worker，保证事务的原子性" ID="e2Dew9DLls" _mubu_text="%3Cspan%3E%E5%90%8C%E4%B8%80%E4%B8%AA%E4%BA%8B%E5%8A%A1%E4%B8%8D%E5%90%8C%E6%93%8D%E4%BD%9C%EF%BC%8C%E5%BF%85%E9%A1%BB%E5%88%86%E5%8F%91%E5%88%B0%E5%90%8C%E4%B8%80%E4%B8%AAworker%EF%BC%8C%E4%BF%9D%E8%AF%81%E4%BA%8B%E5%8A%A1%E7%9A%84%E5%8E%9F%E5%AD%90%E6%80%A7%3C/span%3E" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="分发策略" ID="5P9zncGhCK" _mubu_text="%3Cspan%3E%E5%88%86%E5%8F%91%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
                <node TEXT="按表分发策略" ID="wFNkvQLi78" _mubu_text="%3Cspan%3E%E6%8C%89%E8%A1%A8%E5%88%86%E5%8F%91%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
                  <node TEXT="如果两个事务更新不同的表，就可以并行处理" ID="7AFKUvaop9" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E4%B8%A4%E4%B8%AA%E4%BA%8B%E5%8A%A1%E6%9B%B4%E6%96%B0%E4%B8%8D%E5%90%8C%E7%9A%84%E8%A1%A8%EF%BC%8C%E5%B0%B1%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork">
                    <node TEXT="实现" ID="19yU391QFX" _mubu_text="%3Cspan%3E%E5%AE%9E%E7%8E%B0%3C/span%3E" STYLE="fork">
                      <node TEXT="每个worker对应一个hash表，用于保存当前worker执行的binlog涉及到的表。hash的key是“库名 + 表名”，value表示worker中有多少个事务在操作这个表" ID="ENxjRDObEQ" _mubu_text="%3Cspan%3E%E6%AF%8F%E4%B8%AAworker%E5%AF%B9%E5%BA%94%E4%B8%80%E4%B8%AAhash%E8%A1%A8%EF%BC%8C%E7%94%A8%E4%BA%8E%E4%BF%9D%E5%AD%98%E5%BD%93%E5%89%8Dworker%E6%89%A7%E8%A1%8C%E7%9A%84binlog%E6%B6%89%E5%8F%8A%E5%88%B0%E7%9A%84%E8%A1%A8%E3%80%82hash%E7%9A%84key%E6%98%AF%E2%80%9C%E5%BA%93%E5%90%8D%20+%20%E8%A1%A8%E5%90%8D%E2%80%9D%EF%BC%8Cvalue%E8%A1%A8%E7%A4%BAworker%E4%B8%AD%E6%9C%89%E5%A4%9A%E5%B0%91%E4%B8%AA%E4%BA%8B%E5%8A%A1%E5%9C%A8%E6%93%8D%E4%BD%9C%E8%BF%99%E4%B8%AA%E8%A1%A8%3C/span%3E" STYLE="fork">
                        <node TEXT="当没有worker冲突" ID="umVtpAGPe7" _mubu_text="%3Cspan%3E%E5%BD%93%E6%B2%A1%E6%9C%89worker%E5%86%B2%E7%AA%81%3C/span%3E" STYLE="fork"/>
                        <node TEXT="只有一个" ID="IgsqbmtMow" _mubu_text="%3Cspan%3E%E5%8F%AA%E6%9C%89%E4%B8%80%E4%B8%AA%3C/span%3E" STYLE="fork"/>
                        <node TEXT="大于一个时" ID="leOJu9Ziov" _mubu_text="%3Cspan%3E%E5%A4%A7%E4%BA%8E%E4%B8%80%E4%B8%AA%E6%97%B6%3C/span%3E" STYLE="fork">
                          <node TEXT="协调者会进入等待状态，直到冲突数 &lt;= 1" ID="qzplZ3nNdD" _mubu_text="%3Cspan%3E%E5%8D%8F%E8%B0%83%E8%80%85%E4%BC%9A%E8%BF%9B%E5%85%A5%E7%AD%89%E5%BE%85%E7%8A%B6%E6%80%81%EF%BC%8C%E7%9B%B4%E5%88%B0%E5%86%B2%E7%AA%81%E6%95%B0%20&amp;lt;=%201%3C/span%3E" STYLE="fork"/>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node TEXT="按行分发策略" ID="3vn0WazO0j" _mubu_text="%3Cspan%3E%E6%8C%89%E8%A1%8C%E5%88%86%E5%8F%91%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
                  <node TEXT="与按表分发类似，hash key变为“库名 + 表名 + 唯一键的值”" ID="qZuQCTnroz" _mubu_text="%3Cspan%3E%E4%B8%8E%E6%8C%89%E8%A1%A8%E5%88%86%E5%8F%91%E7%B1%BB%E4%BC%BC%EF%BC%8Chash%20key%E5%8F%98%E4%B8%BA%E2%80%9C%E5%BA%93%E5%90%8D%20+%20%E8%A1%A8%E5%90%8D%20+%20%E5%94%AF%E4%B8%80%E9%94%AE%E7%9A%84%E5%80%BC%E2%80%9D%3C/span%3E" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="并行复制策略" ID="hdUJ5knqcH" _mubu_text="%3Cspan%3E%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
                <node TEXT="MariaDB的并行复制" ID="Zwh984hWeP" _mubu_text="%3Cspan%3EMariaDB%E7%9A%84%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork">
                  <node TEXT="利用redo log组提交的特点" ID="PfpbENRzU3" _mubu_text="%3Cspan%3E%E5%88%A9%E7%94%A8redo%20log%E7%BB%84%E6%8F%90%E4%BA%A4%E7%9A%84%E7%89%B9%E7%82%B9%3C/span%3E" STYLE="fork">
                    <node TEXT="即在一个组提交的事务中，一定不会修改同一行；主库上可以并行的事务，从库上也可以并行。" ID="pHxLy5Qy8Q" _mubu_text="%3Cspan%3E%E5%8D%B3%E5%9C%A8%E4%B8%80%E4%B8%AA%E7%BB%84%E6%8F%90%E4%BA%A4%E7%9A%84%E4%BA%8B%E5%8A%A1%E4%B8%AD%EF%BC%8C%E4%B8%80%E5%AE%9A%E4%B8%8D%E4%BC%9A%E4%BF%AE%E6%94%B9%E5%90%8C%E4%B8%80%E8%A1%8C%EF%BC%9B%E4%B8%BB%E5%BA%93%E4%B8%8A%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%E7%9A%84%E4%BA%8B%E5%8A%A1%EF%BC%8C%E4%BB%8E%E5%BA%93%E4%B8%8A%E4%B9%9F%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%E3%80%82%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="实现" ID="HmrHEn4Lk7" _mubu_text="%3Cspan%3E%E5%AE%9E%E7%8E%B0%3C/span%3E" STYLE="fork">
                    <node TEXT="1、在一个组里提交的事务有相同的commit_id" ID="PnO6Rr5Z7r" _mubu_text="%3Cspan%3E1%E3%80%81%E5%9C%A8%E4%B8%80%E4%B8%AA%E7%BB%84%E9%87%8C%E6%8F%90%E4%BA%A4%E7%9A%84%E4%BA%8B%E5%8A%A1%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84commit_id%3C/span%3E" STYLE="fork"/>
                    <node TEXT="2、commit_id会直接写到binlog中" ID="0q4pz3zmdi" _mubu_text="%3Cspan%3E2%E3%80%81commit_id%E4%BC%9A%E7%9B%B4%E6%8E%A5%E5%86%99%E5%88%B0binlog%E4%B8%AD%3C/span%3E" STYLE="fork"/>
                    <node TEXT="3、传到从库时，相同的commit_id的事务会被分发到不同的worker中执行" ID="o9fMbmdRIF" _mubu_text="%3Cspan%3E3%E3%80%81%E4%BC%A0%E5%88%B0%E4%BB%8E%E5%BA%93%E6%97%B6%EF%BC%8C%E7%9B%B8%E5%90%8C%E7%9A%84commit_id%E7%9A%84%E4%BA%8B%E5%8A%A1%E4%BC%9A%E8%A2%AB%E5%88%86%E5%8F%91%E5%88%B0%E4%B8%8D%E5%90%8C%E7%9A%84worker%E4%B8%AD%E6%89%A7%E8%A1%8C%3C/span%3E" STYLE="fork"/>
                    <node TEXT="4、一组事务执行完成后，再取下一组重复以上步骤" ID="MqQuovQvpP" _mubu_text="%3Cspan%3E4%E3%80%81%E4%B8%80%E7%BB%84%E4%BA%8B%E5%8A%A1%E6%89%A7%E8%A1%8C%E5%AE%8C%E6%88%90%E5%90%8E%EF%BC%8C%E5%86%8D%E5%8F%96%E4%B8%8B%E4%B8%80%E7%BB%84%E9%87%8D%E5%A4%8D%E4%BB%A5%E4%B8%8A%E6%AD%A5%E9%AA%A4%3C/span%3E" STYLE="fork">
                      <node TEXT="如果上一个组提交中有大事务，会阻塞" ID="ykQqRzAd9x" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E4%B8%8A%E4%B8%80%E4%B8%AA%E7%BB%84%E6%8F%90%E4%BA%A4%E4%B8%AD%E6%9C%89%E5%A4%A7%E4%BA%8B%E5%8A%A1%EF%BC%8C%E4%BC%9A%E9%98%BB%E5%A1%9E%3C/span%3E" STYLE="fork"/>
                    </node>
                  </node>
                </node>
                <node TEXT="MySQL 5.7的并行复制策略" ID="moXCj0cdHF" _mubu_text="%3Cspan%3EMySQL%205.7%E7%9A%84%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%E7%AD%96%E7%95%A5%3C/span%3E" STYLE="fork">
                  <node TEXT="在MariaDB上进行优化，回顾两阶段提交流程" ID="mlC8eIs0TE" _mubu_text="%3Cspan%3E%E5%9C%A8MariaDB%E4%B8%8A%E8%BF%9B%E8%A1%8C%E4%BC%98%E5%8C%96%EF%BC%8C%E5%9B%9E%E9%A1%BE%E4%B8%A4%E9%98%B6%E6%AE%B5%E6%8F%90%E4%BA%A4%E6%B5%81%E7%A8%8B%3C/span%3E" STYLE="fork">
                    <node TEXT="当redo log prepare之后，事务之间就已经完成了冲突检测" ID="L0EKTj6BPj" _mubu_text="%3Cspan%3E%E5%BD%93redo%20log%20prepare%E4%B9%8B%E5%90%8E%EF%BC%8C%E4%BA%8B%E5%8A%A1%E4%B9%8B%E9%97%B4%E5%B0%B1%E5%B7%B2%E7%BB%8F%E5%AE%8C%E6%88%90%E4%BA%86%E5%86%B2%E7%AA%81%E6%A3%80%E6%B5%8B%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="优化思想" ID="iyqFQugG7U" _mubu_text="%3Cspan%3E%E4%BC%98%E5%8C%96%E6%80%9D%E6%83%B3%3C/span%3E" STYLE="fork">
                    <node TEXT="1、同时处于prepare阶段的事务，可以并行执行" ID="mtFjpWvE31" _mubu_text="%3Cspan%3E1%E3%80%81%E5%90%8C%E6%97%B6%E5%A4%84%E4%BA%8Eprepare%E9%98%B6%E6%AE%B5%E7%9A%84%E4%BA%8B%E5%8A%A1%EF%BC%8C%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%E6%89%A7%E8%A1%8C%3C/span%3E" STYLE="fork"/>
                    <node TEXT="2、处于prepare阶段的事务与处于commit状态的事务之间，可以并行执行" ID="IYR7K5IVw6" _mubu_text="%3Cspan%3E2%E3%80%81%E5%A4%84%E4%BA%8Eprepare%E9%98%B6%E6%AE%B5%E7%9A%84%E4%BA%8B%E5%8A%A1%E4%B8%8E%E5%A4%84%E4%BA%8Ecommit%E7%8A%B6%E6%80%81%E7%9A%84%E4%BA%8B%E5%8A%A1%E4%B9%8B%E9%97%B4%EF%BC%8C%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%E6%89%A7%E8%A1%8C%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="优化方案" ID="d4fwpHZ89g" _mubu_text="%3Cspan%3E%E4%BC%98%E5%8C%96%E6%96%B9%E6%A1%88%3C/span%3E" STYLE="fork">
                    <node TEXT="减缓主库binlog写入(延迟执行fsync，让一个组中有更多的事务)，让从库充分利用多线程能力赶上" ID="OnLlRVbrYI" _mubu_text="%3Cspan%3E%E5%87%8F%E7%BC%93%E4%B8%BB%E5%BA%93binlog%E5%86%99%E5%85%A5(%E5%BB%B6%E8%BF%9F%E6%89%A7%E8%A1%8Cfsync%EF%BC%8C%E8%AE%A9%E4%B8%80%E4%B8%AA%E7%BB%84%E4%B8%AD%E6%9C%89%E6%9B%B4%E5%A4%9A%E7%9A%84%E4%BA%8B%E5%8A%A1)%EF%BC%8C%E8%AE%A9%E4%BB%8E%E5%BA%93%E5%85%85%E5%88%86%E5%88%A9%E7%94%A8%E5%A4%9A%E7%BA%BF%E7%A8%8B%E8%83%BD%E5%8A%9B%E8%B5%B6%E4%B8%8A%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
                <node TEXT="MySQL 5.7.22的并行复制" ID="WP92A3Cspn" _mubu_text="%3Cspan%3EMySQL%205.7.22%E7%9A%84%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork">
                  <node TEXT="增加了基于writeSet的并行复制" ID="LsEWNnyEL5" _mubu_text="%3Cspan%3E%E5%A2%9E%E5%8A%A0%E4%BA%86%E5%9F%BA%E4%BA%8EwriteSet%E7%9A%84%E5%B9%B6%E8%A1%8C%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork"/>
                  <node TEXT="1、commit_order" ID="mGTL6v67xm" _mubu_text="%3Cspan%3E1%E3%80%81commit_order%3C/span%3E" STYLE="fork">
                    <node TEXT="处于prepare和commit状态的binlog都可以被分发到不同的worker上处理" ID="qvxpb3jtAT" _mubu_text="%3Cspan%3E%E5%A4%84%E4%BA%8Eprepare%E5%92%8Ccommit%E7%8A%B6%E6%80%81%E7%9A%84binlog%E9%83%BD%E5%8F%AF%E4%BB%A5%E8%A2%AB%E5%88%86%E5%8F%91%E5%88%B0%E4%B8%8D%E5%90%8C%E7%9A%84worker%E4%B8%8A%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="2、writeSet" ID="hp2Y5xujIr" _mubu_text="%3Cspan%3E2%E3%80%81writeSet%3C/span%3E" STYLE="fork">
                    <node TEXT="对于事务更新的每一行，都计算出一个hash值，组成集合writeSet。" ID="Fvzyb9k4Av" _mubu_text="%3Cspan%3E%E5%AF%B9%E4%BA%8E%E4%BA%8B%E5%8A%A1%E6%9B%B4%E6%96%B0%E7%9A%84%E6%AF%8F%E4%B8%80%E8%A1%8C%EF%BC%8C%E9%83%BD%E8%AE%A1%E7%AE%97%E5%87%BA%E4%B8%80%E4%B8%AAhash%E5%80%BC%EF%BC%8C%E7%BB%84%E6%88%90%E9%9B%86%E5%90%88writeSet%E3%80%82%3C/span%3E" STYLE="fork">
                      <node TEXT="如果两个事务的writeSet没有交集，说明事务没有操作相同的行，事务之间可以并行" ID="QkYi9GNpND" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E4%B8%A4%E4%B8%AA%E4%BA%8B%E5%8A%A1%E7%9A%84writeSet%E6%B2%A1%E6%9C%89%E4%BA%A4%E9%9B%86%EF%BC%8C%E8%AF%B4%E6%98%8E%E4%BA%8B%E5%8A%A1%E6%B2%A1%E6%9C%89%E6%93%8D%E4%BD%9C%E7%9B%B8%E5%90%8C%E7%9A%84%E8%A1%8C%EF%BC%8C%E4%BA%8B%E5%8A%A1%E4%B9%8B%E9%97%B4%E5%8F%AF%E4%BB%A5%E5%B9%B6%E8%A1%8C%3C/span%3E" STYLE="fork"/>
                    </node>
                  </node>
                  <node TEXT="3、writeSet_session" ID="NfRSRhppn2" _mubu_text="%3Cspan%3E3%E3%80%81writeSet_session%3C/span%3E" STYLE="fork">
                    <node TEXT="在writeSet基础上新增了一个约束，在主库上同一个线程执行2个事务的执行顺序，从库上也需要保证顺序性" ID="RFQhwZgvAi" _mubu_text="%3Cspan%3E%E5%9C%A8writeSet%E5%9F%BA%E7%A1%80%E4%B8%8A%E6%96%B0%E5%A2%9E%E4%BA%86%E4%B8%80%E4%B8%AA%E7%BA%A6%E6%9D%9F%EF%BC%8C%E5%9C%A8%E4%B8%BB%E5%BA%93%E4%B8%8A%E5%90%8C%E4%B8%80%E4%B8%AA%E7%BA%BF%E7%A8%8B%E6%89%A7%E8%A1%8C2%E4%B8%AA%E4%BA%8B%E5%8A%A1%E7%9A%84%E6%89%A7%E8%A1%8C%E9%A1%BA%E5%BA%8F%EF%BC%8C%E4%BB%8E%E5%BA%93%E4%B8%8A%E4%B9%9F%E9%9C%80%E8%A6%81%E4%BF%9D%E8%AF%81%E9%A1%BA%E5%BA%8F%E6%80%A7%3C/span%3E" STYLE="fork"/>
                    <node TEXT="不需要把整个事务的binlog都扫描一遍，才决定分发到哪个worker，更节省内存" ID="MJxaqEgfEV" _mubu_text="%3Cspan%3E%E4%B8%8D%E9%9C%80%E8%A6%81%E6%8A%8A%E6%95%B4%E4%B8%AA%E4%BA%8B%E5%8A%A1%E7%9A%84binlog%E9%83%BD%E6%89%AB%E6%8F%8F%E4%B8%80%E9%81%8D%EF%BC%8C%E6%89%8D%E5%86%B3%E5%AE%9A%E5%88%86%E5%8F%91%E5%88%B0%E5%93%AA%E4%B8%AAworker%EF%BC%8C%E6%9B%B4%E8%8A%82%E7%9C%81%E5%86%85%E5%AD%98%3C/span%3E" STYLE="fork"/>
                    <node TEXT="由于从库分发策略不依赖于binlog的内容，因此对binlog的格式没有要求" ID="OZ6CQt3bAd" _mubu_text="%3Cspan%3E%E7%94%B1%E4%BA%8E%E4%BB%8E%E5%BA%93%E5%88%86%E5%8F%91%E7%AD%96%E7%95%A5%E4%B8%8D%E4%BE%9D%E8%B5%96%E4%BA%8Ebinlog%E7%9A%84%E5%86%85%E5%AE%B9%EF%BC%8C%E5%9B%A0%E6%AD%A4%E5%AF%B9binlog%E7%9A%84%E6%A0%BC%E5%BC%8F%E6%B2%A1%E6%9C%89%E8%A6%81%E6%B1%82%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="MySQL加速查询" ID="8D5lucwLYw" _mubu_text="%3Cspan%3EMySQL%E5%8A%A0%E9%80%9F%E6%9F%A5%E8%AF%A2%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="操作系统" ID="47D3A7ksvt" _mubu_text="%3Cspan%3E%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F%3C/span%3E" STYLE="bubble" POSITION="right">
      <node TEXT="进程、线程、协程" ID="vNlOLHYoep" _mubu_text="%3Cspan%3E%E8%BF%9B%E7%A8%8B%E3%80%81%E7%BA%BF%E7%A8%8B%E3%80%81%E5%8D%8F%E7%A8%8B%3C/span%3E" STYLE="fork">
        <node TEXT="区别" ID="dXlMAd9hpR" _mubu_text="%3Cspan%3E%E5%8C%BA%E5%88%AB%3C/span%3E" STYLE="fork">
          <node TEXT="线程与进程" ID="wZRNASiNl8" _mubu_text="%3Cspan%3E%E7%BA%BF%E7%A8%8B%E4%B8%8E%E8%BF%9B%E7%A8%8B%3C/span%3E" STYLE="fork">
            <node TEXT="地址空间" ID="wP2LptLKhD" _mubu_text="%3Cspan%3E%E5%9C%B0%E5%9D%80%E7%A9%BA%E9%97%B4%3C/span%3E" STYLE="fork"/>
            <node TEXT="资源拥有" ID="EFSs25WTAk" _mubu_text="%3Cspan%3E%E8%B5%84%E6%BA%90%E6%8B%A5%E6%9C%89%3C/span%3E" STYLE="fork"/>
            <node TEXT="处理器调度" ID="Oem8BtbZA2" _mubu_text="%3Cspan%3E%E5%A4%84%E7%90%86%E5%99%A8%E8%B0%83%E5%BA%A6%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="进程、线程、协程" ID="6Gd2wX3hk4" _mubu_text="%3Cspan%3E%E8%BF%9B%E7%A8%8B%E3%80%81%E7%BA%BF%E7%A8%8B%E3%80%81%E5%8D%8F%E7%A8%8B%3C/span%3E" STYLE="fork">
            <node TEXT="用户态到内核态切换" ID="CmC8nCZm1o" _mubu_text="%3Cspan%3E%E7%94%A8%E6%88%B7%E6%80%81%E5%88%B0%E5%86%85%E6%A0%B8%E6%80%81%E5%88%87%E6%8D%A2%3C/span%3E" STYLE="fork">
              <node TEXT="进程：存在切换" ID="7ZT0ScsdHa" _mubu_text="%3Cspan%3E%E8%BF%9B%E7%A8%8B%EF%BC%9A%E5%AD%98%E5%9C%A8%E5%88%87%E6%8D%A2%3C/span%3E" STYLE="fork"/>
              <node TEXT="线程：存在切换" ID="qwn7XYRMSE" _mubu_text="%3Cspan%3E%E7%BA%BF%E7%A8%8B%EF%BC%9A%E5%AD%98%E5%9C%A8%E5%88%87%E6%8D%A2%3C/span%3E" STYLE="fork"/>
              <node TEXT="协程：纯用户态" ID="g8UFPFAQ23" _mubu_text="%3Cspan%3E%E5%8D%8F%E7%A8%8B%EF%BC%9A%E7%BA%AF%E7%94%A8%E6%88%B7%E6%80%81%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="同步异步" ID="I9POfFybdc" _mubu_text="%3Cspan%3E%E5%90%8C%E6%AD%A5%E5%BC%82%E6%AD%A5%3C/span%3E" STYLE="fork">
              <node TEXT="线程、进程是同步" ID="ynJMvGNJvU" _mubu_text="%3Cspan%3E%E7%BA%BF%E7%A8%8B%E3%80%81%E8%BF%9B%E7%A8%8B%E6%98%AF%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork"/>
              <node TEXT="协程是异步" ID="wxBu4Cehnj" _mubu_text="%3Cspan%3E%E5%8D%8F%E7%A8%8B%E6%98%AF%E5%BC%82%E6%AD%A5%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="mmap" ID="coYv0pQef2" _mubu_text="%3Cspan%3Emmap%3C/span%3E" STYLE="fork">
        <node TEXT="mmap为什么读取比read方式快" ID="tj0uVGjIpF" _mubu_text="%3Cspan%3Emmap%E4%B8%BA%E4%BB%80%E4%B9%88%E8%AF%BB%E5%8F%96%E6%AF%94read%E6%96%B9%E5%BC%8F%E5%BF%AB%3C/span%3E" STYLE="fork">
          <node TEXT="减少了1次CPU拷贝操作" ID="ysYNvX5rAz" _mubu_text="%3Cspan%3E%E5%87%8F%E5%B0%91%E4%BA%861%E6%AC%A1CPU%E6%8B%B7%E8%B4%9D%E6%93%8D%E4%BD%9C%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="IO和零拷贝技术" ID="zMzFFRd629" _mubu_text="%3Cspan%3EIO%E5%92%8C%E9%9B%B6%E6%8B%B7%E8%B4%9D%E6%8A%80%E6%9C%AF%3C/span%3E" STYLE="fork">
        <node TEXT="中断方式IO和DMA方式" ID="jiDldjdNHL" _mubu_text="%3Cspan%3E%E4%B8%AD%E6%96%AD%E6%96%B9%E5%BC%8FIO%E5%92%8CDMA%E6%96%B9%E5%BC%8F%3C/span%3E" STYLE="fork">
          <node TEXT="中断，每次有IO数据都会中断" ID="Lwlh0KQbAc" _mubu_text="%3Cspan%3E%E4%B8%AD%E6%96%AD%EF%BC%8C%E6%AF%8F%E6%AC%A1%E6%9C%89IO%E6%95%B0%E6%8D%AE%E9%83%BD%E4%BC%9A%E4%B8%AD%E6%96%AD%3C/span%3E" STYLE="fork"/>
          <node TEXT="DMA控制器" ID="6zZq5ZGYXY" _mubu_text="%3Cspan%3EDMA%E6%8E%A7%E5%88%B6%E5%99%A8%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="read + write" ID="SuviOjzpkz" _mubu_text="%3Cspan%3Eread%20+%20write%3C/span%3E" STYLE="fork">
          <node TEXT="4次上下文切换，2次CPU拷贝，2次DMA拷贝" ID="lQSi4LI0iX" _mubu_text="%3Cspan%3E4%E6%AC%A1%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%EF%BC%8C2%E6%AC%A1CPU%E6%8B%B7%E8%B4%9D%EF%BC%8C2%E6%AC%A1DMA%E6%8B%B7%E8%B4%9D%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="用户态直接IO" ID="cC1Ace0uiD" _mubu_text="%3Cspan%3E%E7%94%A8%E6%88%B7%E6%80%81%E7%9B%B4%E6%8E%A5IO%3C/span%3E" STYLE="fork">
          <node TEXT="绕过内核，不需要内核缓冲，有自己的数据缓存机制" ID="r9gWADVRU8" _mubu_text="%3Cspan%3E%E7%BB%95%E8%BF%87%E5%86%85%E6%A0%B8%EF%BC%8C%E4%B8%8D%E9%9C%80%E8%A6%81%E5%86%85%E6%A0%B8%E7%BC%93%E5%86%B2%EF%BC%8C%E6%9C%89%E8%87%AA%E5%B7%B1%E7%9A%84%E6%95%B0%E6%8D%AE%E7%BC%93%E5%AD%98%E6%9C%BA%E5%88%B6%3C/span%3E" STYLE="fork">
            <node TEXT="如数据库" ID="s49oY5UKpL" _mubu_text="%3Cspan%3E%E5%A6%82%E6%95%B0%E6%8D%AE%E5%BA%93%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="减少拷贝次数" ID="dS6SBupjOH" _mubu_text="%3Cspan%3E%E5%87%8F%E5%B0%91%E6%8B%B7%E8%B4%9D%E6%AC%A1%E6%95%B0%3C/span%3E" STYLE="fork">
          <node TEXT="mmap + write" ID="s9LGD4zKKv" _mubu_text="%3Cspan%3Emmap%20+%20write%3C/span%3E" STYLE="fork">
            <node TEXT="4次上下文切换，1次CPU拷贝，2次DMA拷贝" ID="wDH2d4vbYY" _mubu_text="%3Cspan%3E4%E6%AC%A1%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%EF%BC%8C1%E6%AC%A1CPU%E6%8B%B7%E8%B4%9D%EF%BC%8C2%E6%AC%A1DMA%E6%8B%B7%E8%B4%9D%3C/span%3E" STYLE="fork"/>
            <node TEXT="提高IO性能，尤其对于大文件" ID="kijTHM1hyO" _mubu_text="%3Cspan%3E%E6%8F%90%E9%AB%98IO%E6%80%A7%E8%83%BD%EF%BC%8C%E5%B0%A4%E5%85%B6%E5%AF%B9%E4%BA%8E%E5%A4%A7%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
            <node TEXT="可能会导致服务器程序被终止" ID="tI2CnN1So7" _mubu_text="%3Cspan%3E%E5%8F%AF%E8%83%BD%E4%BC%9A%E5%AF%BC%E8%87%B4%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%A8%8B%E5%BA%8F%E8%A2%AB%E7%BB%88%E6%AD%A2%3C/span%3E" STYLE="fork">
              <node TEXT="mmap一个文件时，如果这个文件被另一个进程所截获，那么write系统调用会因为访问非法地址而被SIGBUS信号终止" ID="9eUShCEOQz" _mubu_text="%3Cspan%3Emmap%E4%B8%80%E4%B8%AA%E6%96%87%E4%BB%B6%E6%97%B6%EF%BC%8C%E5%A6%82%E6%9E%9C%E8%BF%99%E4%B8%AA%E6%96%87%E4%BB%B6%E8%A2%AB%E5%8F%A6%E4%B8%80%E4%B8%AA%E8%BF%9B%E7%A8%8B%E6%89%80%E6%88%AA%E8%8E%B7%EF%BC%8C%E9%82%A3%E4%B9%88write%E7%B3%BB%E7%BB%9F%E8%B0%83%E7%94%A8%E4%BC%9A%E5%9B%A0%E4%B8%BA%E8%AE%BF%E9%97%AE%E9%9D%9E%E6%B3%95%E5%9C%B0%E5%9D%80%E8%80%8C%E8%A2%ABSIGBUS%E4%BF%A1%E5%8F%B7%E7%BB%88%E6%AD%A2%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="sendfile" ID="a1ypfIMV4T" _mubu_text="%3Cspan%3Esendfile%3C/span%3E" STYLE="fork">
            <node TEXT="数据不经过用户态，IO数据对用户空间完全不可见，但省去了上下文切换的过程" ID="eQyACH6KnR" _mubu_text="%3Cspan%3E%E6%95%B0%E6%8D%AE%E4%B8%8D%E7%BB%8F%E8%BF%87%E7%94%A8%E6%88%B7%E6%80%81%EF%BC%8CIO%E6%95%B0%E6%8D%AE%E5%AF%B9%E7%94%A8%E6%88%B7%E7%A9%BA%E9%97%B4%E5%AE%8C%E5%85%A8%E4%B8%8D%E5%8F%AF%E8%A7%81%EF%BC%8C%E4%BD%86%E7%9C%81%E5%8E%BB%E4%BA%86%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%E7%9A%84%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork"/>
            <node TEXT="2次上下文切换，1次CPU拷贝，2次DMA拷贝" ID="RbEEKY2DN9" _mubu_text="%3Cspan%3E2%E6%AC%A1%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%EF%BC%8C1%E6%AC%A1CPU%E6%8B%B7%E8%B4%9D%EF%BC%8C2%E6%AC%A1DMA%E6%8B%B7%E8%B4%9D%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="sendfile +DMA gather copy" ID="cwa9AsrDxe" _mubu_text="%3Cspan%3Esendfile%20+DMA%20gather%20copy%3C/span%3E" STYLE="fork">
            <node TEXT="2次上下文切换，0次CPU拷贝，2次DMA拷贝" ID="GTGIr6Orbd" _mubu_text="%3Cspan%3E2%E6%AC%A1%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%EF%BC%8C0%E6%AC%A1CPU%E6%8B%B7%E8%B4%9D%EF%BC%8C2%E6%AC%A1DMA%E6%8B%B7%E8%B4%9D%3C/span%3E" STYLE="fork"/>
            <node TEXT="需要硬件和驱动支持，只适用于将数据从文件拷贝到socket套接字的传输过程" ID="JEbKfQWRWj" _mubu_text="%3Cspan%3E%E9%9C%80%E8%A6%81%E7%A1%AC%E4%BB%B6%E5%92%8C%E9%A9%B1%E5%8A%A8%E6%94%AF%E6%8C%81%EF%BC%8C%E5%8F%AA%E9%80%82%E7%94%A8%E4%BA%8E%E5%B0%86%E6%95%B0%E6%8D%AE%E4%BB%8E%E6%96%87%E4%BB%B6%E6%8B%B7%E8%B4%9D%E5%88%B0socket%E5%A5%97%E6%8E%A5%E5%AD%97%E7%9A%84%E4%BC%A0%E8%BE%93%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="Splice" ID="5IM4p1UhQA" _mubu_text="%3Cspan%3ESplice%3C/span%3E" STYLE="fork">
            <node TEXT="不需要硬件支持，通过管道实现" ID="m6KuMwJgXz" _mubu_text="%3Cspan%3E%E4%B8%8D%E9%9C%80%E8%A6%81%E7%A1%AC%E4%BB%B6%E6%94%AF%E6%8C%81%EF%BC%8C%E9%80%9A%E8%BF%87%E7%AE%A1%E9%81%93%E5%AE%9E%E7%8E%B0%3C/span%3E" STYLE="fork"/>
            <node TEXT="要求两个文件描述符中，至少有一个是管道描述符" ID="x0YKj4czpo" _mubu_text="%3Cspan%3E%E8%A6%81%E6%B1%82%E4%B8%A4%E4%B8%AA%E6%96%87%E4%BB%B6%E6%8F%8F%E8%BF%B0%E7%AC%A6%E4%B8%AD%EF%BC%8C%E8%87%B3%E5%B0%91%E6%9C%89%E4%B8%80%E4%B8%AA%E6%98%AF%E7%AE%A1%E9%81%93%E6%8F%8F%E8%BF%B0%E7%AC%A6%3C/span%3E" STYLE="fork"/>
            <node TEXT="2次上下文切换，0次拷贝，2次DMA拷贝" ID="tAT32mi8f4" _mubu_text="%3Cspan%3E2%E6%AC%A1%E4%B8%8A%E4%B8%8B%E6%96%87%E5%88%87%E6%8D%A2%EF%BC%8C0%E6%AC%A1%E6%8B%B7%E8%B4%9D%EF%BC%8C2%E6%AC%A1DMA%E6%8B%B7%E8%B4%9D%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="写时复制技术" ID="iJoOVlSdJp" _mubu_text="%3Cspan%3E%E5%86%99%E6%97%B6%E5%A4%8D%E5%88%B6%E6%8A%80%E6%9C%AF%3C/span%3E" STYLE="fork">
          <node TEXT="共享数据不更改时，永不复制" ID="VW8bQZPJgE" _mubu_text="%3Cspan%3E%E5%85%B1%E4%BA%AB%E6%95%B0%E6%8D%AE%E4%B8%8D%E6%9B%B4%E6%94%B9%E6%97%B6%EF%BC%8C%E6%B0%B8%E4%B8%8D%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="虚拟内存" ID="1U6l6bvNGb" _mubu_text="%3Cspan%3E%E8%99%9A%E6%8B%9F%E5%86%85%E5%AD%98%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="Redis" ID="mj5TaO8OWM" _mubu_text="%3Cspan%3ERedis%3C/span%3E" STYLE="bubble" POSITION="right">
      <node TEXT="持久化" ID="Ay9BdGZ462" _mubu_text="%3Cspan%3E%E6%8C%81%E4%B9%85%E5%8C%96%3C/span%3E" STYLE="fork">
        <node TEXT="RDB" ID="RN7xZE4gwP" _mubu_text="%3Cspan%3ERDB%3C/span%3E" STYLE="fork">
          <node TEXT="全量数据快照，压缩的二进制文件" ID="lEAjLxe0z6" _mubu_text="%3Cspan%3E%E5%85%A8%E9%87%8F%E6%95%B0%E6%8D%AE%E5%BF%AB%E7%85%A7%EF%BC%8C%E5%8E%8B%E7%BC%A9%E7%9A%84%E4%BA%8C%E8%BF%9B%E5%88%B6%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
          <node TEXT="SAVE、BGSAVE" ID="QVXztH1Z56" _mubu_text="%3Cspan%3ESAVE%E3%80%81BGSAVE%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="AOF" ID="rJui5JbnXa" _mubu_text="%3Cspan%3EAOF%3C/span%3E" STYLE="fork">
          <node TEXT="持续增量的备份，追加写日志方式" ID="4uwMNYm54d" _mubu_text="%3Cspan%3E%E6%8C%81%E7%BB%AD%E5%A2%9E%E9%87%8F%E7%9A%84%E5%A4%87%E4%BB%BD%EF%BC%8C%E8%BF%BD%E5%8A%A0%E5%86%99%E6%97%A5%E5%BF%97%E6%96%B9%E5%BC%8F%3C/span%3E" STYLE="fork"/>
          <node TEXT="持久化的实现" ID="VtzJGdgB6A" _mubu_text="%3Cspan%3E%E6%8C%81%E4%B9%85%E5%8C%96%E7%9A%84%E5%AE%9E%E7%8E%B0%3C/span%3E" STYLE="fork">
            <node TEXT="命令追加" ID="3AT0URrzIm" _mubu_text="%3Cspan%3E%E5%91%BD%E4%BB%A4%E8%BF%BD%E5%8A%A0%3C/span%3E" STYLE="fork">
              <node TEXT="将被执行写命令追加到aof_buffer" ID="Pxiecm8blD" _mubu_text="%3Cspan%3E%E5%B0%86%E8%A2%AB%E6%89%A7%E8%A1%8C%E5%86%99%E5%91%BD%E4%BB%A4%E8%BF%BD%E5%8A%A0%E5%88%B0aof_buffer%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="文件写入" ID="9JjT6qtYdc" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E5%86%99%E5%85%A5%3C/span%3E" STYLE="fork">
              <node TEXT="fsync" ID="tkNPrNbZVh" _mubu_text="%3Cspan%3Efsync%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="文件同步" ID="cm0vcdzPHq" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="AOF文件重写" ID="PjO5BTnmXM" _mubu_text="%3Cspan%3EAOF%E6%96%87%E4%BB%B6%E9%87%8D%E5%86%99%3C/span%3E" STYLE="fork">
            <node TEXT="原理" ID="tKBNXIeNHd" _mubu_text="%3Cspan%3E%E5%8E%9F%E7%90%86%3C/span%3E" STYLE="fork">
              <node TEXT="从数据库中读取当前键的值，然后用一条命令去记录键值对的写入操作，代替之前的多条命令" ID="WYLzjIxgtr" _mubu_text="%3Cspan%3E%E4%BB%8E%E6%95%B0%E6%8D%AE%E5%BA%93%E4%B8%AD%E8%AF%BB%E5%8F%96%E5%BD%93%E5%89%8D%E9%94%AE%E7%9A%84%E5%80%BC%EF%BC%8C%E7%84%B6%E5%90%8E%E7%94%A8%E4%B8%80%E6%9D%A1%E5%91%BD%E4%BB%A4%E5%8E%BB%E8%AE%B0%E5%BD%95%E9%94%AE%E5%80%BC%E5%AF%B9%E7%9A%84%E5%86%99%E5%85%A5%E6%93%8D%E4%BD%9C%EF%BC%8C%E4%BB%A3%E6%9B%BF%E4%B9%8B%E5%89%8D%E7%9A%84%E5%A4%9A%E6%9D%A1%E5%91%BD%E4%BB%A4%3C/span%3E" STYLE="fork"/>
              <node TEXT="同时，为了避免执行命令时，客户端缓冲区溢出。" ID="FLFeg5f3Ps" _mubu_text="%3Cspan%3E%E5%90%8C%E6%97%B6%EF%BC%8C%E4%B8%BA%E4%BA%86%E9%81%BF%E5%85%8D%E6%89%A7%E8%A1%8C%E5%91%BD%E4%BB%A4%E6%97%B6%EF%BC%8C%E5%AE%A2%E6%88%B7%E7%AB%AF%E7%BC%93%E5%86%B2%E5%8C%BA%E6%BA%A2%E5%87%BA%E3%80%82%3C/span%3E" STYLE="fork">
                <node TEXT="对于包含元素数量特别多的键，采用多条命令来记录键的值" ID="Hp9ErT17eh" _mubu_text="%3Cspan%3E%E5%AF%B9%E4%BA%8E%E5%8C%85%E5%90%AB%E5%85%83%E7%B4%A0%E6%95%B0%E9%87%8F%E7%89%B9%E5%88%AB%E5%A4%9A%E7%9A%84%E9%94%AE%EF%BC%8C%E9%87%87%E7%94%A8%E5%A4%9A%E6%9D%A1%E5%91%BD%E4%BB%A4%E6%9D%A5%E8%AE%B0%E5%BD%95%E9%94%AE%E7%9A%84%E5%80%BC%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="后台重写" ID="NhWpt3tyUg" _mubu_text="%3Cspan%3E%E5%90%8E%E5%8F%B0%E9%87%8D%E5%86%99%3C/span%3E" STYLE="fork">
              <node TEXT="AOF重写由子进程实现，使用子进程的原因是子进程具有父进程的内存空间快找，父进程对内存的修改对于子进程不可见，二者互不影响，保证安全性" ID="BT71l2egCc" _mubu_text="%3Cspan%3EAOF%E9%87%8D%E5%86%99%E7%94%B1%3C/span%3E%3Cspan%20class=%22%20text-color-red%22%3E%E5%AD%90%E8%BF%9B%E7%A8%8B%3C/span%3E%3Cspan%3E%E5%AE%9E%E7%8E%B0%EF%BC%8C%E4%BD%BF%E7%94%A8%E5%AD%90%E8%BF%9B%E7%A8%8B%E7%9A%84%E5%8E%9F%E5%9B%A0%E6%98%AF%E5%AD%90%E8%BF%9B%E7%A8%8B%E5%85%B7%E6%9C%89%E7%88%B6%E8%BF%9B%E7%A8%8B%E7%9A%84%E5%86%85%E5%AD%98%E7%A9%BA%E9%97%B4%E5%BF%AB%E6%89%BE%EF%BC%8C%E7%88%B6%E8%BF%9B%E7%A8%8B%E5%AF%B9%E5%86%85%E5%AD%98%E7%9A%84%E4%BF%AE%E6%94%B9%E5%AF%B9%E4%BA%8E%E5%AD%90%E8%BF%9B%E7%A8%8B%E4%B8%8D%E5%8F%AF%E8%A7%81%EF%BC%8C%E4%BA%8C%E8%80%85%E4%BA%92%E4%B8%8D%E5%BD%B1%E5%93%8D%EF%BC%8C%E4%BF%9D%E8%AF%81%E5%AE%89%E5%85%A8%E6%80%A7%3C/span%3E" STYLE="fork"/>
              <node TEXT="数据不一致问题" ID="G0bPdgsnrq" _mubu_text="%3Cspan%3E%E6%95%B0%E6%8D%AE%E4%B8%8D%E4%B8%80%E8%87%B4%E9%97%AE%E9%A2%98%3C/span%3E" STYLE="fork">
                <node TEXT="创建AOF重写操作子进程之后，Redis使用一个AOF重写缓冲区，记录重写期间Redis服务器执行的写命令，当AOF重写完成后，将AOF重写缓冲区的内容追加到新的AOF文件中" ID="QcYbgRviTU" _mubu_text="%3Cspan%3E%E5%88%9B%E5%BB%BAAOF%E9%87%8D%E5%86%99%E6%93%8D%E4%BD%9C%E5%AD%90%E8%BF%9B%E7%A8%8B%E4%B9%8B%E5%90%8E%EF%BC%8CRedis%E4%BD%BF%E7%94%A8%E4%B8%80%E4%B8%AAAOF%E9%87%8D%E5%86%99%E7%BC%93%E5%86%B2%E5%8C%BA%EF%BC%8C%E8%AE%B0%E5%BD%95%E9%87%8D%E5%86%99%E6%9C%9F%E9%97%B4Redis%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%89%A7%E8%A1%8C%E7%9A%84%E5%86%99%E5%91%BD%E4%BB%A4%EF%BC%8C%E5%BD%93AOF%E9%87%8D%E5%86%99%E5%AE%8C%E6%88%90%E5%90%8E%EF%BC%8C%E5%B0%86AOF%E9%87%8D%E5%86%99%E7%BC%93%E5%86%B2%E5%8C%BA%E7%9A%84%E5%86%85%E5%AE%B9%E8%BF%BD%E5%8A%A0%E5%88%B0%E6%96%B0%E7%9A%84AOF%E6%96%87%E4%BB%B6%E4%B8%AD%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="跳表" ID="hiAuvutGm6" _mubu_text="%3Cspan%3E%E8%B7%B3%E8%A1%A8%3C/span%3E" STYLE="fork">
        <node TEXT="结构" ID="FLZym9Yioq" _mubu_text="%3Cspan%3E%E7%BB%93%E6%9E%84%3C/span%3E" STYLE="fork">
          <node TEXT="level[]" ID="YDmkSITpUk" _mubu_text="%3Cspan%3Elevel%5B%5D%3C/span%3E" STYLE="fork">
            <node TEXT="forward" ID="bTQBSsCkJV" _mubu_text="%3Cspan%3Eforward%3C/span%3E" STYLE="fork">
              <node TEXT="前进指针" ID="Ttmh5oUwRd" _mubu_text="%3Cspan%3E%E5%89%8D%E8%BF%9B%E6%8C%87%E9%92%88%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="span" ID="IdYk2v3cwE" _mubu_text="%3Cspan%3Espan%3C/span%3E" STYLE="fork">
              <node TEXT="跨度" ID="xCM9Dwklk8" _mubu_text="%3Cspan%3E%E8%B7%A8%E5%BA%A6%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="性能" ID="1jBmCdLejR" _mubu_text="%3Cspan%3E%E6%80%A7%E8%83%BD%3C/span%3E" STYLE="fork">
          <node TEXT="O(logn)" ID="8sEDmkyX1E" _mubu_text="%3Cspan%3EO(logn)%3C/span%3E" STYLE="fork"/>
          <node TEXT="根据比较当前所指的值和前进指针中所指的值，确认和缩小搜索区间" ID="kVAfzdkm4B" _mubu_text="%3Cspan%3E%E6%A0%B9%E6%8D%AE%E6%AF%94%E8%BE%83%E5%BD%93%E5%89%8D%E6%89%80%E6%8C%87%E7%9A%84%E5%80%BC%E5%92%8C%E5%89%8D%E8%BF%9B%E6%8C%87%E9%92%88%E4%B8%AD%E6%89%80%E6%8C%87%E7%9A%84%E5%80%BC%EF%BC%8C%E7%A1%AE%E8%AE%A4%E5%92%8C%E7%BC%A9%E5%B0%8F%E6%90%9C%E7%B4%A2%E5%8C%BA%E9%97%B4%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="主从|哨兵|集群" ID="mQ9HMvZPAi" _mubu_text="%3Cspan%3E%E4%B8%BB%E4%BB%8E%7C%E5%93%A8%E5%85%B5%7C%E9%9B%86%E7%BE%A4%3C/span%3E" STYLE="fork">
        <node TEXT="主从复制" ID="P0zBVSXyCh" _mubu_text="%3Cspan%3E%E4%B8%BB%E4%BB%8E%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork">
          <node TEXT="同步" ID="wiVyJ16Yq7" _mubu_text="%3Cspan%3E%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork">
            <node TEXT="2.8版本前，全量重同步" ID="7Qb9V7dxof" _mubu_text="%3Cspan%3E2.8%E7%89%88%E6%9C%AC%E5%89%8D%EF%BC%8C%E5%85%A8%E9%87%8F%E9%87%8D%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork">
              <node TEXT="缺点" ID="WJdnPDEFS0" _mubu_text="%3Cspan%3E%E7%BC%BA%E7%82%B9%3C/span%3E" STYLE="fork">
                <node TEXT="从服务器每次重连都要复制完整的RDB文件" ID="zn75WFh6RU" _mubu_text="%3Cspan%3E%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%AF%8F%E6%AC%A1%E9%87%8D%E8%BF%9E%E9%83%BD%E8%A6%81%E5%A4%8D%E5%88%B6%E5%AE%8C%E6%95%B4%E7%9A%84RDB%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
                <node TEXT="SYNC效率很低，会导致主服务器BGSAVE，耗费大量CPU、内存、IO" ID="YvIGmv0Jkl" _mubu_text="%3Cspan%3ESYNC%E6%95%88%E7%8E%87%E5%BE%88%E4%BD%8E%EF%BC%8C%E4%BC%9A%E5%AF%BC%E8%87%B4%E4%B8%BB%E6%9C%8D%E5%8A%A1%E5%99%A8BGSAVE%EF%BC%8C%E8%80%97%E8%B4%B9%E5%A4%A7%E9%87%8FCPU%E3%80%81%E5%86%85%E5%AD%98%E3%80%81IO%3C/span%3E" STYLE="fork"/>
                <node TEXT="载入RDB到从服务器时，会阻塞，无法响应命令" ID="lKuqecdoBY" _mubu_text="%3Cspan%3E%E8%BD%BD%E5%85%A5RDB%E5%88%B0%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%97%B6%EF%BC%8C%E4%BC%9A%E9%98%BB%E5%A1%9E%EF%BC%8C%E6%97%A0%E6%B3%95%E5%93%8D%E5%BA%94%E5%91%BD%E4%BB%A4%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="2.8版本后，支持完整重同步、部分冲同步" ID="OfyZ4yNVRU" _mubu_text="%3Cspan%3E2.8%E7%89%88%E6%9C%AC%E5%90%8E%EF%BC%8C%E6%94%AF%E6%8C%81%E5%AE%8C%E6%95%B4%E9%87%8D%E5%90%8C%E6%AD%A5%E3%80%81%E9%83%A8%E5%88%86%E5%86%B2%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork">
              <node TEXT="主从服务器的复制偏移量" ID="XUR2YJs6Fq" _mubu_text="%3Cspan%3E%E4%B8%BB%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%9A%84%E5%A4%8D%E5%88%B6%E5%81%8F%E7%A7%BB%E9%87%8F%3C/span%3E" STYLE="fork">
                <node TEXT="发送N字节加N" ID="65O7pqebTo" _mubu_text="%3Cspan%3E%E5%8F%91%E9%80%81N%E5%AD%97%E8%8A%82%E5%8A%A0N%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="主服务器的复制积压缓冲区" ID="42M7hHevNa" _mubu_text="%3Cspan%3E%E4%B8%BB%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%9A%84%E5%A4%8D%E5%88%B6%E7%A7%AF%E5%8E%8B%E7%BC%93%E5%86%B2%E5%8C%BA%3C/span%3E" STYLE="fork">
                <node TEXT="维护一个FIFO队列" ID="3eWr64t3Yz" _mubu_text="%3Cspan%3E%E7%BB%B4%E6%8A%A4%E4%B8%80%E4%B8%AAFIFO%E9%98%9F%E5%88%97%3C/span%3E" STYLE="fork">
                  <node TEXT="命令传播" ID="IjpIomO8MZ" _mubu_text="%3Cspan%3E%E5%91%BD%E4%BB%A4%E4%BC%A0%E6%92%AD%3C/span%3E" STYLE="fork">
                    <node TEXT="将命令发送给所有从服务器，并且将命令写入复制积压缓冲区" ID="pPrhAHFgkk" _mubu_text="%3Cspan%3E%E5%B0%86%E5%91%BD%E4%BB%A4%E5%8F%91%E9%80%81%E7%BB%99%E6%89%80%E6%9C%89%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%B0%86%E5%91%BD%E4%BB%A4%E5%86%99%E5%85%A5%E5%A4%8D%E5%88%B6%E7%A7%AF%E5%8E%8B%E7%BC%93%E5%86%B2%E5%8C%BA%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="同步" ID="g6jOvcnmyx" _mubu_text="%3Cspan%3E%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork">
                    <node TEXT="如果从服务器发送的PSYNC偏移量在复制积压缓冲区范围内，进行部分重同步" ID="jYBxuJelRK" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%91%E9%80%81%E7%9A%84PSYNC%E5%81%8F%E7%A7%BB%E9%87%8F%E5%9C%A8%E5%A4%8D%E5%88%B6%E7%A7%AF%E5%8E%8B%E7%BC%93%E5%86%B2%E5%8C%BA%E8%8C%83%E5%9B%B4%E5%86%85%EF%BC%8C%E8%BF%9B%E8%A1%8C%E9%83%A8%E5%88%86%E9%87%8D%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork"/>
                    <node TEXT="否则进行完整重同步" ID="kkg6uREnDC" _mubu_text="%3Cspan%3E%E5%90%A6%E5%88%99%E8%BF%9B%E8%A1%8C%E5%AE%8C%E6%95%B4%E9%87%8D%E5%90%8C%E6%AD%A5%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
              </node>
              <node TEXT="服务器运行ID" ID="0rUqNl0FXW" _mubu_text="%3Cspan%3E%E6%9C%8D%E5%8A%A1%E5%99%A8%E8%BF%90%E8%A1%8CID%3C/span%3E" STYLE="fork">
                <node TEXT="主从服务器都会生成一个随机ID" ID="FiEs7C5MjH" _mubu_text="%3Cspan%3E%E4%B8%BB%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E9%83%BD%E4%BC%9A%E7%94%9F%E6%88%90%E4%B8%80%E4%B8%AA%E9%9A%8F%E6%9C%BAID%3C/span%3E" STYLE="fork"/>
                <node TEXT="从服务器记录主服务器的ID" ID="hpjvhuNyQN" _mubu_text="%3Cspan%3E%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E8%AE%B0%E5%BD%95%E4%B8%BB%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%9A%84ID%3C/span%3E" STYLE="fork"/>
                <node TEXT="从服务器重连后，会带着主服务器ID去确认" ID="nZG3QjdFCJ" _mubu_text="%3Cspan%3E%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E9%87%8D%E8%BF%9E%E5%90%8E%EF%BC%8C%E4%BC%9A%E5%B8%A6%E7%9D%80%E4%B8%BB%E6%9C%8D%E5%8A%A1%E5%99%A8ID%E5%8E%BB%E7%A1%AE%E8%AE%A4%3C/span%3E" STYLE="fork">
                  <node TEXT="+FULLRESYNC" ID="a6L7OOtjYd" _mubu_text="%3Cspan%3E+FULLRESYNC%3C/span%3E" STYLE="fork">
                    <node TEXT="完整" ID="K308VjML6a" _mubu_text="%3Cspan%3E%E5%AE%8C%E6%95%B4%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="CONTINUE" ID="6dLg8zCLcB" _mubu_text="%3Cspan%3ECONTINUE%3C/span%3E" STYLE="fork">
                    <node TEXT="部分" ID="kp7OFU6fIH" _mubu_text="%3Cspan%3E%E9%83%A8%E5%88%86%3C/span%3E" STYLE="fork"/>
                  </node>
                  <node TEXT="-ERR" ID="Rx5RK4D2BK" _mubu_text="%3Cspan%3E-ERR%3C/span%3E" STYLE="fork">
                    <node TEXT="主服务器低于2.8，通过SYNC" ID="wkYsQXFErd" _mubu_text="%3Cspan%3E%E4%B8%BB%E6%9C%8D%E5%8A%A1%E5%99%A8%E4%BD%8E%E4%BA%8E2.8%EF%BC%8C%E9%80%9A%E8%BF%87SYNC%3C/span%3E" STYLE="fork"/>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node TEXT="命令传播" ID="jMXh10zG5A" _mubu_text="%3Cspan%3E%E5%91%BD%E4%BB%A4%E4%BC%A0%E6%92%AD%3C/span%3E" STYLE="fork">
            <node TEXT="将自己的写命令发送给从服务器执行" ID="DTfAkmsFu6" _mubu_text="%3Cspan%3E%E5%B0%86%E8%87%AA%E5%B7%B1%E7%9A%84%E5%86%99%E5%91%BD%E4%BB%A4%E5%8F%91%E9%80%81%E7%BB%99%E4%BB%8E%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%89%A7%E8%A1%8C%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="哨兵模式" ID="NIA95vsHk3" _mubu_text="%3Cspan%3E%E5%93%A8%E5%85%B5%E6%A8%A1%E5%BC%8F%3C/span%3E" STYLE="fork">
          <node TEXT="哨兵" ID="WZM2Pr5SEa" _mubu_text="%3Cspan%3E%E5%93%A8%E5%85%B5%3C/span%3E" STYLE="fork">
            <node TEXT="监听主、主上哨兵、主上从" ID="fRKBZQCYa5" _mubu_text="%3Cspan%3E%E7%9B%91%E5%90%AC%E4%B8%BB%E3%80%81%E4%B8%BB%E4%B8%8A%E5%93%A8%E5%85%B5%E3%80%81%E4%B8%BB%E4%B8%8A%E4%BB%8E%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="检测主观下线" ID="E3R7AAlQR4" _mubu_text="%3Cspan%3E%E6%A3%80%E6%B5%8B%E4%B8%BB%E8%A7%82%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
          <node TEXT="检测客观下线" ID="XE39F7SXtK" _mubu_text="%3Cspan%3E%E6%A3%80%E6%B5%8B%E5%AE%A2%E8%A7%82%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
          <node TEXT="领头Sentinel" ID="18Lt0Qy2KN" _mubu_text="%3Cspan%3E%E9%A2%86%E5%A4%B4Sentinel%3C/span%3E" STYLE="fork"/>
          <node TEXT="故障转移" ID="BDkvtZT8l4" _mubu_text="%3Cspan%3E%E6%95%85%E9%9A%9C%E8%BD%AC%E7%A7%BB%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="集群" ID="rBUI9hu5t7" _mubu_text="%3Cspan%3E%E9%9B%86%E7%BE%A4%3C/span%3E" STYLE="fork">
          <node TEXT="分片方式共享，提供复制和故障转移" ID="DBjGkio09U" _mubu_text="%3Cspan%3E%E5%88%86%E7%89%87%E6%96%B9%E5%BC%8F%E5%85%B1%E4%BA%AB%EF%BC%8C%E6%8F%90%E4%BE%9B%E5%A4%8D%E5%88%B6%E5%92%8C%E6%95%85%E9%9A%9C%E8%BD%AC%E7%A7%BB%3C/span%3E" STYLE="fork"/>
          <node TEXT="节点处理slot" ID="xMp6lzNmVS" _mubu_text="%3Cspan%3E%E8%8A%82%E7%82%B9%E5%A4%84%E7%90%86slot%3C/span%3E" STYLE="fork"/>
          <node TEXT="查询节点A slotB上的数据，若A不管理slotB，则会让客户端永久重定向" ID="V5296iwETi" _mubu_text="%3Cspan%3E%E6%9F%A5%E8%AF%A2%E8%8A%82%E7%82%B9A%20slotB%E4%B8%8A%E7%9A%84%E6%95%B0%E6%8D%AE%EF%BC%8C%E8%8B%A5A%E4%B8%8D%E7%AE%A1%E7%90%86slotB%EF%BC%8C%E5%88%99%E4%BC%9A%E8%AE%A9%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B0%B8%E4%B9%85%E9%87%8D%E5%AE%9A%E5%90%91%3C/span%3E" STYLE="fork"/>
          <node TEXT="重新分片" ID="06fWGYtF2L" _mubu_text="%3Cspan%3E%E9%87%8D%E6%96%B0%E5%88%86%E7%89%87%3C/span%3E" STYLE="fork">
            <node TEXT="由集群管理软件redis-trib负责" ID="mzWYjAl94t" _mubu_text="%3Cspan%3E%E7%94%B1%E9%9B%86%E7%BE%A4%E7%AE%A1%E7%90%86%E8%BD%AF%E4%BB%B6redis-trib%E8%B4%9F%E8%B4%A3%3C/span%3E" STYLE="fork"/>
            <node TEXT="过程" ID="jgu3Woxq1S" _mubu_text="%3Cspan%3E%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork">
              <node TEXT="目标节点准备导入slot的键值对" ID="gUMoNG9pMF" _mubu_text="%3Cspan%3E%E7%9B%AE%E6%A0%87%E8%8A%82%E7%82%B9%E5%87%86%E5%A4%87%E5%AF%BC%E5%85%A5slot%E7%9A%84%E9%94%AE%E5%80%BC%E5%AF%B9%3C/span%3E" STYLE="fork"/>
              <node TEXT="源节点准备迁移slot的键值对" ID="htknquPtqX" _mubu_text="%3Cspan%3E%E6%BA%90%E8%8A%82%E7%82%B9%E5%87%86%E5%A4%87%E8%BF%81%E7%A7%BBslot%E7%9A%84%E9%94%AE%E5%80%BC%E5%AF%B9%3C/span%3E" STYLE="fork"/>
              <node TEXT="源节点slot中包含键" ID="LKxynGj9GX" _mubu_text="%3Cspan%3E%E6%BA%90%E8%8A%82%E7%82%B9slot%E4%B8%AD%E5%8C%85%E5%90%AB%E9%94%AE%3C/span%3E" STYLE="fork">
                <node TEXT="是，将键一个一个迁移至目标节点" ID="iXxz3LrDZS" _mubu_text="%3Cspan%3E%E6%98%AF%EF%BC%8C%E5%B0%86%E9%94%AE%E4%B8%80%E4%B8%AA%E4%B8%80%E4%B8%AA%E8%BF%81%E7%A7%BB%E8%87%B3%E7%9B%AE%E6%A0%87%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
                <node TEXT="否，将slot指派给目标节点" ID="Y4xrtvTkef" _mubu_text="%3Cspan%3E%E5%90%A6%EF%BC%8C%E5%B0%86slot%E6%8C%87%E6%B4%BE%E7%BB%99%E7%9B%AE%E6%A0%87%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
              </node>
              <node TEXT="完成重分配" ID="gVobyhpSID" _mubu_text="%3Cspan%3E%E5%AE%8C%E6%88%90%E9%87%8D%E5%88%86%E9%85%8D%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="ASK错误" ID="S45EI0ePFX" _mubu_text="%3Cspan%3EASK%E9%94%99%E8%AF%AF%3C/span%3E" STYLE="fork">
              <node TEXT="slot迁移过程，查询正在迁移的key" ID="WZFw8JqnJM" _mubu_text="%3Cspan%3Eslot%E8%BF%81%E7%A7%BB%E8%BF%87%E7%A8%8B%EF%BC%8C%E6%9F%A5%E8%AF%A2%E6%AD%A3%E5%9C%A8%E8%BF%81%E7%A7%BB%E7%9A%84key%3C/span%3E" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="复制与故障转移" ID="ChKRGDafYw" _mubu_text="%3Cspan%3E%E5%A4%8D%E5%88%B6%E4%B8%8E%E6%95%85%E9%9A%9C%E8%BD%AC%E7%A7%BB%3C/span%3E" STYLE="fork">
            <node TEXT="复制" ID="FdSjtds5Cu" _mubu_text="%3Cspan%3E%E5%A4%8D%E5%88%B6%3C/span%3E" STYLE="fork">
              <node TEXT="让接受命令的节点去复制node_id节点，成为其从节点" ID="XQBaUcBL6m" _mubu_text="%3Cspan%3E%E8%AE%A9%E6%8E%A5%E5%8F%97%E5%91%BD%E4%BB%A4%E7%9A%84%E8%8A%82%E7%82%B9%E5%8E%BB%E5%A4%8D%E5%88%B6node_id%E8%8A%82%E7%82%B9%EF%BC%8C%E6%88%90%E4%B8%BA%E5%85%B6%E4%BB%8E%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork">
                <node TEXT="==slave of" ID="moJ5GHje1K" _mubu_text="%3Cspan%3E==slave%20of%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="故障检测" ID="VSwstXzwMi" _mubu_text="%3Cspan%3E%E6%95%85%E9%9A%9C%E6%A3%80%E6%B5%8B%3C/span%3E" STYLE="fork">
              <node TEXT="主观下线" ID="jsCp2qBk9z" _mubu_text="%3Cspan%3E%E4%B8%BB%E8%A7%82%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
              <node TEXT="已下线" ID="UDl0dINcTB" _mubu_text="%3Cspan%3E%E5%B7%B2%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
              <node TEXT="故障检测" ID="eCk3T5YXWQ" _mubu_text="%3Cspan%3E%E6%95%85%E9%9A%9C%E6%A3%80%E6%B5%8B%3C/span%3E" STYLE="fork">
                <node TEXT="1、集群内的节点会向其他节点发送Ping命令，检测是否在线；" ID="11QnG3QeCn" _mubu_text="%3Cspan%3E1%E3%80%81%E9%9B%86%E7%BE%A4%E5%86%85%E7%9A%84%E8%8A%82%E7%82%B9%E4%BC%9A%E5%90%91%E5%85%B6%E4%BB%96%E8%8A%82%E7%82%B9%E5%8F%91%E9%80%81Ping%E5%91%BD%E4%BB%A4%EF%BC%8C%E6%A3%80%E6%B5%8B%E6%98%AF%E5%90%A6%E5%9C%A8%E7%BA%BF%EF%BC%9B%3C/span%3E" STYLE="fork"/>
                <node TEXT="2、如果未能在规定时间内做出Pong回复，则会把对应节点标记为疑似下线" ID="939cXB7O49" _mubu_text="%3Cspan%3E2%E3%80%81%E5%A6%82%E6%9E%9C%E6%9C%AA%E8%83%BD%E5%9C%A8%E8%A7%84%E5%AE%9A%E6%97%B6%E9%97%B4%E5%86%85%E5%81%9A%E5%87%BAPong%E5%9B%9E%E5%A4%8D%EF%BC%8C%E5%88%99%E4%BC%9A%E6%8A%8A%E5%AF%B9%E5%BA%94%E8%8A%82%E7%82%B9%E6%A0%87%E8%AE%B0%E4%B8%BA%E7%96%91%E4%BC%BC%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
                <node TEXT="3、集群中一半以上负责处理槽的主节点，都将主节点x标记为疑似下线，则主节点x被认为 已下线" ID="0EvOhGI8Vb" _mubu_text="%3Cspan%3E3%E3%80%81%E9%9B%86%E7%BE%A4%E4%B8%AD%E4%B8%80%E5%8D%8A%E4%BB%A5%E4%B8%8A%E8%B4%9F%E8%B4%A3%E5%A4%84%E7%90%86%E6%A7%BD%E7%9A%84%E4%B8%BB%E8%8A%82%E7%82%B9%EF%BC%8C%E9%83%BD%E5%B0%86%E4%B8%BB%E8%8A%82%E7%82%B9x%E6%A0%87%E8%AE%B0%E4%B8%BA%E7%96%91%E4%BC%BC%E4%B8%8B%E7%BA%BF%EF%BC%8C%E5%88%99%E4%B8%BB%E8%8A%82%E7%82%B9x%E8%A2%AB%E8%AE%A4%E4%B8%BA%20%E5%B7%B2%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
                <node TEXT="4、向集群广播节点x已下线，收到信息后，会在自己维护的结构体中将主节点x标记为已下线" ID="DgenPGx5RL" _mubu_text="%3Cspan%3E4%E3%80%81%E5%90%91%E9%9B%86%E7%BE%A4%E5%B9%BF%E6%92%AD%E8%8A%82%E7%82%B9x%E5%B7%B2%E4%B8%8B%E7%BA%BF%EF%BC%8C%E6%94%B6%E5%88%B0%E4%BF%A1%E6%81%AF%E5%90%8E%EF%BC%8C%E4%BC%9A%E5%9C%A8%E8%87%AA%E5%B7%B1%E7%BB%B4%E6%8A%A4%E7%9A%84%E7%BB%93%E6%9E%84%E4%BD%93%E4%B8%AD%E5%B0%86%E4%B8%BB%E8%8A%82%E7%82%B9x%E6%A0%87%E8%AE%B0%E4%B8%BA%E5%B7%B2%E4%B8%8B%E7%BA%BF%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="MOVED错误" ID="KlPn8xbzrU" _mubu_text="%3Cspan%3EMOVED%E9%94%99%E8%AF%AF%3C/span%3E" STYLE="fork">
              <node TEXT="查询的key不再当前节点" ID="LQGRAYWIJl" _mubu_text="%3Cspan%3E%E6%9F%A5%E8%AF%A2%E7%9A%84key%E4%B8%8D%E5%86%8D%E5%BD%93%E5%89%8D%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
            </node>
            <node TEXT="选举办法" ID="NWQyiYRZzs" _mubu_text="%3Cspan%3E%E9%80%89%E4%B8%BE%E5%8A%9E%E6%B3%95%3C/span%3E" STYLE="fork">
              <node TEXT="epoch" ID="fWStAWSJm7" _mubu_text="%3Cspan%3Eepoch%3C/span%3E" STYLE="fork">
                <node TEXT="自增计数器，一次故障转移自增一次。" ID="3pwSDjj37v" _mubu_text="%3Cspan%3E%E8%87%AA%E5%A2%9E%E8%AE%A1%E6%95%B0%E5%99%A8%EF%BC%8C%E4%B8%80%E6%AC%A1%E6%95%85%E9%9A%9C%E8%BD%AC%E7%A7%BB%E8%87%AA%E5%A2%9E%E4%B8%80%E6%AC%A1%E3%80%82%3C/span%3E" STYLE="fork"/>
                <node TEXT="一个epoch中每个主节点都有一次投票机会，哪个从节点先要求投票则先得" ID="3iEQdaiXwP" _mubu_text="%3Cspan%3E%E4%B8%80%E4%B8%AAepoch%E4%B8%AD%E6%AF%8F%E4%B8%AA%E4%B8%BB%E8%8A%82%E7%82%B9%E9%83%BD%E6%9C%89%E4%B8%80%E6%AC%A1%E6%8A%95%E7%A5%A8%E6%9C%BA%E4%BC%9A%EF%BC%8C%E5%93%AA%E4%B8%AA%E4%BB%8E%E8%8A%82%E7%82%B9%E5%85%88%E8%A6%81%E6%B1%82%E6%8A%95%E7%A5%A8%E5%88%99%E5%85%88%E5%BE%97%3C/span%3E" STYLE="fork"/>
                <node TEXT="当从节点票数大于N/2时，成为主节点" ID="H0ogB7WTwH" _mubu_text="%3Cspan%3E%E5%BD%93%E4%BB%8E%E8%8A%82%E7%82%B9%E7%A5%A8%E6%95%B0%E5%A4%A7%E4%BA%8EN/2%E6%97%B6%EF%BC%8C%E6%88%90%E4%B8%BA%E4%B8%BB%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork">
                  <node TEXT="否则进入下一个纪元重新选举投票" ID="mVsgcvu2mb" _mubu_text="%3Cspan%3E%E5%90%A6%E5%88%99%E8%BF%9B%E5%85%A5%E4%B8%8B%E4%B8%80%E4%B8%AA%E7%BA%AA%E5%85%83%E9%87%8D%E6%96%B0%E9%80%89%E4%B8%BE%E6%8A%95%E7%A5%A8%3C/span%3E" STYLE="fork"/>
                </node>
              </node>
              <node TEXT="选举过程" ID="v6lpPA7j0u" _mubu_text="%3Cspan%3E%E9%80%89%E4%B8%BE%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork">
                <node TEXT="当从节点发现自己复制的主节点已下线，会向集群里广播一条消息，拉票" ID="iSrkABkYdT" _mubu_text="%3Cspan%3E%E5%BD%93%E4%BB%8E%E8%8A%82%E7%82%B9%E5%8F%91%E7%8E%B0%E8%87%AA%E5%B7%B1%E5%A4%8D%E5%88%B6%E7%9A%84%E4%B8%BB%E8%8A%82%E7%82%B9%E5%B7%B2%E4%B8%8B%E7%BA%BF%EF%BC%8C%E4%BC%9A%E5%90%91%E9%9B%86%E7%BE%A4%E9%87%8C%E5%B9%BF%E6%92%AD%E4%B8%80%E6%9D%A1%E6%B6%88%E6%81%AF%EF%BC%8C%E6%8B%89%E7%A5%A8%3C/span%3E" STYLE="fork"/>
                <node TEXT="主节点向第一个发送选举消息的从节点回复支持" ID="bo560mYasG" _mubu_text="%3Cspan%3E%E4%B8%BB%E8%8A%82%E7%82%B9%E5%90%91%E7%AC%AC%E4%B8%80%E4%B8%AA%E5%8F%91%E9%80%81%E9%80%89%E4%B8%BE%E6%B6%88%E6%81%AF%E7%9A%84%E4%BB%8E%E8%8A%82%E7%82%B9%E5%9B%9E%E5%A4%8D%E6%94%AF%E6%8C%81%3C/span%3E" STYLE="fork"/>
                <node TEXT="当支持数量超过一半后，该从节点当选新的主节点" ID="HHsCruXWrp" _mubu_text="%3Cspan%3E%E5%BD%93%E6%94%AF%E6%8C%81%E6%95%B0%E9%87%8F%E8%B6%85%E8%BF%87%E4%B8%80%E5%8D%8A%E5%90%8E%EF%BC%8C%E8%AF%A5%E4%BB%8E%E8%8A%82%E7%82%B9%E5%BD%93%E9%80%89%E6%96%B0%E7%9A%84%E4%B8%BB%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="故障转移" ID="W0C2VeJlfL" _mubu_text="%3Cspan%3E%E6%95%85%E9%9A%9C%E8%BD%AC%E7%A7%BB%3C/span%3E" STYLE="fork">
              <node TEXT="从下线的主节点的从节点中挑选新的主节点" ID="3Fy9A1RsQN" _mubu_text="%3Cspan%3E%E4%BB%8E%E4%B8%8B%E7%BA%BF%E7%9A%84%E4%B8%BB%E8%8A%82%E7%82%B9%E7%9A%84%E4%BB%8E%E8%8A%82%E7%82%B9%E4%B8%AD%E6%8C%91%E9%80%89%E6%96%B0%E7%9A%84%E4%B8%BB%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
              <node TEXT="过程" ID="OGjeglzIPR" _mubu_text="%3Cspan%3E%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork">
                <node TEXT="1、新当选的从节点执行slaveof on one，成为主节点" ID="o1KqoexriY" _mubu_text="%3Cspan%3E1%E3%80%81%E6%96%B0%E5%BD%93%E9%80%89%E7%9A%84%E4%BB%8E%E8%8A%82%E7%82%B9%E6%89%A7%E8%A1%8Cslaveof%20on%20one%EF%BC%8C%E6%88%90%E4%B8%BA%E4%B8%BB%E8%8A%82%E7%82%B9%3C/span%3E" STYLE="fork"/>
                <node TEXT="2、新主节点撤销旧主节点的槽指派，指派给自己" ID="d1vswhYyke" _mubu_text="%3Cspan%3E2%E3%80%81%E6%96%B0%E4%B8%BB%E8%8A%82%E7%82%B9%E6%92%A4%E9%94%80%E6%97%A7%E4%B8%BB%E8%8A%82%E7%82%B9%E7%9A%84%E6%A7%BD%E6%8C%87%E6%B4%BE%EF%BC%8C%E6%8C%87%E6%B4%BE%E7%BB%99%E8%87%AA%E5%B7%B1%3C/span%3E" STYLE="fork"/>
                <node TEXT="4、新主节点开始工作" ID="yglsEG8F33" _mubu_text="%3Cspan%3E4%E3%80%81%E6%96%B0%E4%B8%BB%E8%8A%82%E7%82%B9%E5%BC%80%E5%A7%8B%E5%B7%A5%E4%BD%9C%3C/span%3E" STYLE="fork"/>
                <node TEXT="3、新主节点向集群发送PONG，宣告自己已经成为主节点，并负责哪些槽" ID="n8tawdibbR" _mubu_text="%3Cspan%3E3%E3%80%81%E6%96%B0%E4%B8%BB%E8%8A%82%E7%82%B9%E5%90%91%E9%9B%86%E7%BE%A4%E5%8F%91%E9%80%81PONG%EF%BC%8C%E5%AE%A3%E5%91%8A%E8%87%AA%E5%B7%B1%E5%B7%B2%E7%BB%8F%E6%88%90%E4%B8%BA%E4%B8%BB%E8%8A%82%E7%82%B9%EF%BC%8C%E5%B9%B6%E8%B4%9F%E8%B4%A3%E5%93%AA%E4%BA%9B%E6%A7%BD%3C/span%3E" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="redis复制过程" ID="ODEoLdSM8K" _mubu_text="%3Cspan%3Eredis%E5%A4%8D%E5%88%B6%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="分布式" ID="M4QuyFgxjs" _mubu_text="%3Cspan%3E%E5%88%86%E5%B8%83%E5%BC%8F%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="Raft" ID="62BirzlFsg" _mubu_text="%3Cspan%3ERaft%3C/span%3E" STYLE="fork">
        <node TEXT="Leader、Follower选举" ID="6uCHo9aSSu" _mubu_text="%3Cspan%3ELeader%E3%80%81Follower%E9%80%89%E4%B8%BE%3C/span%3E" STYLE="fork"/>
        <node TEXT="任期" ID="yYrTYFsQ2K" _mubu_text="%3Cspan%3E%E4%BB%BB%E6%9C%9F%3C/span%3E" STYLE="fork"/>
        <node TEXT="脑裂" ID="zRAnJh2PHC" _mubu_text="%3Cspan%3E%E8%84%91%E8%A3%82%3C/span%3E" STYLE="fork"/>
        <node TEXT="详见" ID="4PvbHkcYRW" _mubu_text="%3Cspan%3E%E8%AF%A6%E8%A7%81%3C/span%3E" STYLE="fork">
          <node TEXT="https://www.cnblogs.com/binyue/p/8647733.html" ID="3CuGeyrpUJ" _mubu_text="%3Ca%20class=%22content-link%22%20target=%22_blank%22%20spellcheck=%22false%22%20rel=%22noreferrer%22%20href=%22https://www.cnblogs.com/binyue/p/8647733.html%22%3E%3Cspan%20class=%22content-link-text%22%3Ehttps://www.cnblogs.com/binyue/p/8647733.html%3C/span%3E%3C/a%3E" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="Linux" ID="MqIkbOhrvL" _mubu_text="%3Cspan%3ELinux%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="linux上开发" ID="fQYKRxU0hO" _mubu_text="%3Cspan%3Elinux%E4%B8%8A%E5%BC%80%E5%8F%91%3C/span%3E" STYLE="fork"/>
      <node TEXT="内存、网络调试" ID="QUWUEPXXCa" _mubu_text="%3Cspan%3E%E5%86%85%E5%AD%98%E3%80%81%E7%BD%91%E7%BB%9C%E8%B0%83%E8%AF%95%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="python" ID="ocPzJm5v2q" _mubu_text="%3Cspan%3Epython%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="装饰器" ID="4sWWpYh8U2" _mubu_text="%3Cspan%3E%E8%A3%85%E9%A5%B0%E5%99%A8%3C/span%3E" STYLE="fork"/>
    </node>
  </node>
</map>