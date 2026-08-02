function onCreate()
    -- 1. Sky (Furthest back)
    makeLuaSprite('sky', 'stages/sky', -600, -300)
    setScrollFactor('sky', 0.1, 0.1)
    addLuaSprite('sky', false)

    -- 2. Back Mountains
    makeLuaSprite('backmount', 'stages/backmount', -500, -200)
    setScrollFactor('backmount', 0.3, 0.3)
    addLuaSprite('backmount', false)

    -- 3. Middle Mountains
    makeLuaSprite('middlemount', 'stages/middlemount', -400, -100)
    setScrollFactor('middlemount', 0.5, 0.5)
    addLuaSprite('middlemount', false)

    -- 4. Clouds (Moving background element or static)
    makeLuaSprite('clouds', 'stages/clouds', -600, -200)
    setScrollFactor('clouds', 0.4, 0.4)
    addLuaSprite('clouds', false)

    -- 5. Ground (Where Boyfriend and Opponent stand)
    makeLuaSprite('ground', 'stages/ground', -500, 400)
    setScrollFactor('ground', 1.0, 1.0)
    addLuaSprite('ground', false)
end

--- Optional: Slowly move the clouds across the sky
function onUpdate(elapsed)
    setProperty('clouds.x', getProperty('clouds.x') + (15 * elapsed))
    if getProperty('clouds.x') > 1000 then
        setProperty('clouds.x', -1200)
    end
end
