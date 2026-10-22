lg=love.graphics


function love.load()
    conf=require('config')

    shove=require('lib.shove')
    shove.setResolution(conf.gw,conf.gh,{fitMethod=conf.fit,renderMode=conf.render})
    shove.setWindowMode(conf.ww,conf.wh,{resizable=true})
    shove.setScalingFilter(conf.filter)

    assets=require('lib.cargo').init('assets')

    fonts={
        monogram=assets.fonts.monogram.monogram(16)
    }
    lg.setFont(fonts.monogram)

    shove.createLayer("example")
end

function love.update()

end

function love.draw()
    shove.beginDraw()
        shove.beginLayer("example")
            lg.print("Hello world!")
        shove.endLayer()
    shove.endDraw()
end