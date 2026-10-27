.class public final Lorg/maplibre/android/snapshotter/MapSnaphotUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/maplibre/android/snapshotter/MapSnaphotUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/snapshotter/MapSnaphotUtil;

    invoke-direct {v0}, Lorg/maplibre/android/snapshotter/MapSnaphotUtil;-><init>()V

    sput-object v0, Lorg/maplibre/android/snapshotter/MapSnaphotUtil;->INSTANCE:Lorg/maplibre/android/snapshotter/MapSnaphotUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    const-string p0, "options"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, 0x1

    if-gt p0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_1
    div-int v1, p0, v0

    if-lt v1, p3, :cond_2

    div-int v1, p1, v0

    if-lt v1, p2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    return v0
.end method
