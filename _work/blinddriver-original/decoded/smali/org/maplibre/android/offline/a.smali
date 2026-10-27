.class public final synthetic Lorg/maplibre/android/offline/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lorg/maplibre/android/offline/OfflineManager;

.field public final synthetic n:Ljava/io/File;

.field public final synthetic o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/offline/a;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/offline/a;->n:Ljava/io/File;

    iput-object p2, p0, Lorg/maplibre/android/offline/a;->m:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p3, p0, Lorg/maplibre/android/offline/a;->o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/offline/OfflineManager;Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;I)V
    .locals 0

    .line 2
    iput p4, p0, Lorg/maplibre/android/offline/a;->l:I

    iput-object p1, p0, Lorg/maplibre/android/offline/a;->m:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p2, p0, Lorg/maplibre/android/offline/a;->n:Ljava/io/File;

    iput-object p3, p0, Lorg/maplibre/android/offline/a;->o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/offline/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/maplibre/android/offline/a;->n:Ljava/io/File;

    iget-object v1, p0, Lorg/maplibre/android/offline/a;->o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Lorg/maplibre/android/offline/a;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0, p0, v1}, Lorg/maplibre/android/offline/OfflineManager;->c(Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/maplibre/android/offline/a;->n:Ljava/io/File;

    iget-object v1, p0, Lorg/maplibre/android/offline/a;->o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Lorg/maplibre/android/offline/a;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0, p0, v1}, Lorg/maplibre/android/offline/OfflineManager;->a(Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/maplibre/android/offline/a;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Lorg/maplibre/android/offline/a;->o:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Lorg/maplibre/android/offline/a;->n:Ljava/io/File;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager;->d(Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
