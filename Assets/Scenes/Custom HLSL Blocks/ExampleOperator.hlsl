// This is an example of a custom HLSL operator that can be used in VFX Graph

/// inputValue: The input value for tween. It will be scaled to the range [0, 1] by using sinusoidal function.
/// amplitude: The amplitude of the output.
/// speed: The speed of the tween.
/// outputValue: The output of the tween.
void EaseInOutSineLoop(in float inputValue, in float amplitude, in float speed, out float outputValue) {
    float t = sin(inputValue * 2 * 3.14159265359 * speed) * 0.5 + 0.5; // Map inputValue to [0, 1]
    outputValue = -amplitude * (cos(3.14159265359 * inputValue * speed) - 1) / 2; // EaseInOutSine
}
