.class public final synthetic Lod/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;


# instance fields
.field public final synthetic a:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/s0;->a:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iget-object p0, p0, Lod/s0;->a:Lr0/u0;

    invoke-static {p0, p1}, Lod/g3;->A(Lr0/u0;Z)V

    :cond_0
    return-void
.end method
