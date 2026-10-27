.class public final synthetic Lorg/maplibre/android/maps/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

.field public final synthetic m:D


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/a;->l:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    iput-wide p2, p0, Lorg/maplibre/android/maps/a;->m:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/a;->l:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    iget-wide v1, p0, Lorg/maplibre/android/maps/a;->m:D

    invoke-static {v0, v1, v2}, Lorg/maplibre/android/maps/NativeMapView$1$1;->a(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;D)V

    return-void
.end method
