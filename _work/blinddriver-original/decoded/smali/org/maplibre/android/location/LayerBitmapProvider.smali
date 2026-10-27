.class Lorg/maplibre/android/location/LayerBitmapProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/LayerBitmapProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LayerBitmapProvider;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/utils/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public generateShadowBitmap(Lorg/maplibre/android/location/LocationComponentOptions;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/location/LayerBitmapProvider;->context:Landroid/content/Context;

    sget v0, Lorg/maplibre/android/R$drawable;->maplibre_user_icon_shadow:I

    invoke-static {p0, v0}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->elevation()F

    move-result p1

    invoke-static {p0, p1}, Lorg/maplibre/android/location/Utils;->generateShadow(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
