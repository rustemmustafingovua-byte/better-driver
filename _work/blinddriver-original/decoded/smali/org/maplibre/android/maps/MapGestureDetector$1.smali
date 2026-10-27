.class Lorg/maplibre/android/maps/MapGestureDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$1;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$1;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    return-void
.end method
