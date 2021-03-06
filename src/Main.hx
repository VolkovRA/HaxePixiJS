package;

// Imports all classes for check syntax errors:
import pixi.Pixi;
import pixi.Application;
import pixi.ICanvasImageSource;
import pixi.Settings;
import pixi.Utils;
import pixi.display.AnimatedSprite;
import pixi.display.BitmapText;
import pixi.display.Container;
import pixi.display.DisplayObject;
import pixi.display.Graphics;
import pixi.display.Mesh;
import pixi.display.NineSlicePlane;
import pixi.display.ParticleContainer;
import pixi.display.SimpleMesh;
import pixi.display.SimplePlane;
import pixi.display.SimpleRope;
import pixi.display.Sprite;
import pixi.display.Text;
import pixi.display.TilingSprite;
import pixi.enums.AlphaMode;
import pixi.enums.BaseLine;
import pixi.enums.BlendMode;
import pixi.enums.BufferBits;
import pixi.enums.ClearMode;
import pixi.enums.CursorType;
import pixi.enums.DrawMode;
import pixi.enums.Environment;
import pixi.enums.FontStyle;
import pixi.enums.FontWeight;
import pixi.enums.GCMode;
import pixi.enums.GLDataType;
import pixi.enums.GlitchFillMode;
import pixi.enums.GLTarget;
import pixi.enums.LineCap;
import pixi.enums.LineJoin;
import pixi.enums.MaskType;
import pixi.enums.MipmapMode;
import pixi.enums.MSAAQuality;
import pixi.enums.PointerType;
import pixi.enums.Precision;
import pixi.enums.RendererType;
import pixi.enums.ScaleMode;
import pixi.enums.ShapeType;
import pixi.enums.TextAlign;
import pixi.enums.TextGradient;
import pixi.enums.TextureFormat;
import pixi.enums.UpdatePriority;
import pixi.enums.WhiteSpace;
import pixi.enums.WrapMode;
import pixi.events.EventEmitter;
import pixi.events.EventEmitter;
import pixi.events.InteractionEvent;
import pixi.events.PixiEvent;
import pixi.events.SoundEvent;
import pixi.filters.AdjustmentFilter;
import pixi.filters.AdvancedBloomFilter;
import pixi.filters.AlphaFilter;
import pixi.filters.AsciiFilter;
import pixi.filters.BevelFilter;
import pixi.filters.BloomFilter;
import pixi.filters.BlurFilter;
import pixi.filters.BlurFilterPass;
import pixi.filters.BulgePinchFilter;
import pixi.filters.ColorMapFilter;
import pixi.filters.ColorMatrixFilter;
import pixi.filters.ColorOverlayFilter;
import pixi.filters.ColorReplaceFilter;
import pixi.filters.ConvolutionFilter;
import pixi.filters.CrossHatchFilter;
import pixi.filters.CRTFilter;
import pixi.filters.DisplacementFilter;
import pixi.filters.DotFilter;
import pixi.filters.DropShadowFilter;
import pixi.filters.EmbossFilter;
import pixi.filters.Filter;
import pixi.filters.FXAAFilter;
import pixi.filters.GlitchFilter;
import pixi.filters.GlowFilter;
import pixi.filters.GodrayFilter;
import pixi.filters.KawaseBlurFilter;
import pixi.filters.MeshMaterial;
import pixi.filters.MotionBlurFilter;
import pixi.filters.MultiColorReplaceFilter;
import pixi.filters.NoiseFilter;
import pixi.filters.OldFilmFilter;
import pixi.filters.OutlineFilter;
import pixi.filters.PixelateFilter;
import pixi.filters.Program;
import pixi.filters.RadialBlurFilter;
import pixi.filters.ReflectionFilter;
import pixi.filters.RGBSplitFilter;
import pixi.filters.Shader;
import pixi.filters.ShockwaveFilter;
import pixi.filters.SimpleLightmapFilter;
import pixi.filters.SpriteMaskFilter;
import pixi.filters.TiltShiftFilter;
import pixi.filters.TwistFilter;
import pixi.filters.ZoomBlurFilter;
import pixi.geom.Bounds;
import pixi.geom.Circle;
import pixi.geom.Ellipse;
import pixi.geom.Geometry;
import pixi.geom.GraphicsGeometry;
import pixi.geom.IHitArea;
import pixi.geom.ISize;
import pixi.geom.Matrix;
import pixi.geom.MeshGeometry;
import pixi.geom.ObservablePoint;
import pixi.geom.Point;
import pixi.geom.Polygon;
import pixi.geom.Quad;
import pixi.geom.QuadUv;
import pixi.geom.Rectangle;
import pixi.geom.RopeGeometry;
import pixi.geom.RoundedRectangle;
import pixi.geom.Star;
import pixi.geom.Transform;
import pixi.loader.BitmapFontLoader;
import pixi.loader.Loader;
import pixi.loader.LoaderResource;
import pixi.loader.SpritesheetLoader;
import pixi.loader.TextureLoader;
import pixi.render.AbstractBatchRenderer;
import pixi.render.AbstractRenderer;
import pixi.render.CanvasGraphicsRenderer;
import pixi.render.CanvasMeshRenderer;
import pixi.render.CanvasRenderer;
import pixi.render.CanvasSpriteRenderer;
import pixi.render.MaskData;
import pixi.render.ObjectRenderer;
import pixi.render.ParticleRenderer;
import pixi.render.Renderer;
import pixi.render.State;
import pixi.render.System;
import pixi.render.plugins.AccessibilityManager;
import pixi.render.plugins.BasePrepare;
import pixi.render.plugins.CanvasExtract;
import pixi.render.plugins.CanvasPrepare;
import pixi.render.plugins.InteractionManager;
import pixi.render.plugins.Prepare;
import pixi.render.plugins.TilingSpriteRenderer;
import pixi.render.systems.AbstractMaskSystem;
import pixi.render.systems.BatchSystem;
import pixi.render.systems.ContextSystem;
import pixi.render.systems.FilterSystem;
import pixi.render.systems.FramebufferSystem;
import pixi.render.systems.GeometrySystem;
import pixi.render.systems.MaskSystem;
import pixi.render.systems.ProjectionSystem;
import pixi.render.systems.RenderTextureSystem;
import pixi.render.systems.ScissorSystem;
import pixi.render.systems.ShaderSystem;
import pixi.render.systems.StateSystem;
import pixi.render.systems.StencilSystem;
import pixi.render.systems.TextureGCSystem;
import pixi.render.systems.TextureSystem;
import pixi.resources.AbstractMultiResource;
import pixi.resources.ArrayResource;
import pixi.resources.BaseImageResource;
import pixi.resources.BufferResource;
import pixi.resources.CanvasResource;
import pixi.resources.CubeResource;
import pixi.resources.DepthResource;
import pixi.resources.ImageBitmapResource;
import pixi.resources.ImageResource;
import pixi.resources.Resource;
import pixi.resources.Resources;
import pixi.resources.SVGResource;
import pixi.resources.VideoResource;
import pixi.sound.IMediaContext;
import pixi.sound.IMediaInstance;
import pixi.sound.Sound;
import pixi.sound.Sounds;
import pixi.sound.SoundSprite;
import pixi.sound.Utils;
import pixi.sound.filters.DistortionFilter;
import pixi.sound.filters.EqualizerFilter;
import pixi.sound.filters.Filter;
import pixi.sound.filters.MonoFilter;
import pixi.sound.filters.ReverbFilter;
import pixi.sound.filters.StereoFilter;
import pixi.sound.filters.TelephoneFilter;
import pixi.text.BitmapFont;
import pixi.text.BitmapFontData;
import pixi.text.TextMetrics;
import pixi.text.TextStyle;
import pixi.textures.BaseRenderTexture;
import pixi.textures.BaseTexture;
import pixi.textures.Framebuffer;
import pixi.textures.GLTexture;
import pixi.textures.RenderTexture;
import pixi.textures.Texture;
import pixi.textures.TextureMatrix;
import pixi.textures.TextureUvs;
import pixi.utils.BatchGeometry;
import pixi.utils.BatchPart;
import pixi.utils.BatchPluginFactory;
import pixi.utils.Buffer;
import pixi.utils.CanvasMaskManager;
import pixi.utils.CanvasRenderTarget;
import pixi.utils.CanvasUtils;
import pixi.utils.GraphicsData;
import pixi.utils.GraphicsUtils;
import pixi.utils.GroupD8;
import pixi.utils.MeshBatchUvs;
import pixi.utils.RenderTexturePool;
import pixi.utils.Runner;
import pixi.utils.Spritesheet;
import pixi.utils.Ticker;
import pixi.utils.ViewableBuffer;

class Main
{
    /**
     * Точка входа.
     */
    public static function main() {
       trace(Pixi.VERSION);
    }
}