.class public Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/Style$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerWrapper"
.end annotation


# instance fields
.field layer:Lorg/maplibre/android/style/layers/Layer;

.field final synthetic this$0:Lorg/maplibre/android/maps/Style$Builder;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/style/layers/Layer;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->this$0:Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    return-void
.end method


# virtual methods
.method public getLayer()Lorg/maplibre/android/style/layers/Layer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->layer:Lorg/maplibre/android/style/layers/Layer;

    return-object p0
.end method
