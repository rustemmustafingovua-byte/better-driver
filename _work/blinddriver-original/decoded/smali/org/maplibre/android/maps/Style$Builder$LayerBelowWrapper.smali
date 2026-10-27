.class public Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;
.super Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/Style$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerBelowWrapper"
.end annotation


# instance fields
.field belowLayer:Ljava/lang/String;

.field final synthetic this$0:Lorg/maplibre/android/maps/Style$Builder;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;->this$0:Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;-><init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/style/layers/Layer;)V

    iput-object p3, p0, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;->belowLayer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBelowLayer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;->belowLayer:Ljava/lang/String;

    return-object p0
.end method
