.class public final synthetic Lorg/maplibre/android/offline/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/offline/d;->l:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    iput-wide p2, p0, Lorg/maplibre/android/offline/d;->m:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/offline/d;->l:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    iget-wide v1, p0, Lorg/maplibre/android/offline/d;->m:J

    invoke-static {v0, v1, v2}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->a(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V

    return-void
.end method
