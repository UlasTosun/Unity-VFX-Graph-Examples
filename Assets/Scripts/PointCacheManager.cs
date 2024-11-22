using UnityEngine;
using UnityEngine.VFX;
using UnityEngine.VFX.Utility;



public class PointCacheManager : MonoBehaviour {

    [Header("References")]
    [SerializeField] private VisualEffect _vfx;
    [SerializeField] private Rigidbody _rigidbody;
    [SerializeField] private MeshRenderer _meshRenderer;

    [Header("Settings")]
    [SerializeField] private float _speed = 7f;

    static readonly ExposedProperty positionAttribute = "Velocity";



    void Start() {
        Invoke(nameof(PlayVFX), 1f);
        _rigidbody.velocity = transform.forward * _speed;
    }



    private void PlayVFX() {
        _vfx.SetVector3(positionAttribute, _rigidbody.velocity);
        _rigidbody.isKinematic = true;
        _vfx.Play();
        _meshRenderer.enabled = false;
    }



}
