.class final Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/snapshotter/MapSnapshotter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Logo"
.end annotation


# instance fields
.field private final large:Landroid/graphics/Bitmap;

.field private final scale:F

.field private final small:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lorg/maplibre/android/snapshotter/MapSnapshotter;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/snapshotter/MapSnapshotter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "F)V"
        }
    .end annotation

    const-string v0, "large"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "small"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->this$0:Lorg/maplibre/android/snapshotter/MapSnapshotter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->large:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->small:Landroid/graphics/Bitmap;

    iput p4, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->scale:F

    return-void
.end method


# virtual methods
.method public final getLarge()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->large:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->scale:F

    return p0
.end method

.method public final getSmall()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->small:Landroid/graphics/Bitmap;

    return-object p0
.end method
