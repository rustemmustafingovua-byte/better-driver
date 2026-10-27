.class Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/AnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeAnnotationHit"
.end annotation


# instance fields
.field private final tapPoint:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;->tapPoint:Landroid/graphics/RectF;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;->tapPoint:Landroid/graphics/RectF;

    return-object p0
.end method
