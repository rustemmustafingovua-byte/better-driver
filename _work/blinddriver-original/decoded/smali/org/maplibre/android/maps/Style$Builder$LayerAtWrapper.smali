.class public Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;
.super Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/Style$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerAtWrapper"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/maplibre/android/maps/Style$Builder;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/style/layers/Layer;I)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;->this$0:Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;-><init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/style/layers/Layer;)V

    iput p3, p0, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;->index:I

    return p0
.end method
