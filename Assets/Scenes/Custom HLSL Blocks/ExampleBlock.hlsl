// This is an example of a custom HLSL block that can be used in VFX Graph

#if defined(VFX_USE_COLOR_CURRENT) && defined(VFX_USE_POSITION_CURRENT)

/// heightThreshold: Particles above this height will change color
/// initialColor: The original color of the particles
/// newColor: The new color of the particles
void ChangeColor(inout VFXAttributes attributes, in float heightThreshold, in float3 initialColor, in float3 newColor) {
    float height = attributes.position.y;

    if (height > heightThreshold)
        attributes.color = newColor;
    else
        attributes.color = initialColor;

}

#endif
