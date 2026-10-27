.class public final synthetic Lorg/maplibre/android/offline/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lorg/maplibre/android/offline/OfflineManager;

.field public final synthetic n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lorg/maplibre/android/offline/b;->l:I

    iput-object p1, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p2, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iput-object p3, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/offline/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iget-object v1, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iget-object v1, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager$resetDatabase$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iget-object v1, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager$packDatabase$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iget-object v1, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager$invalidateAmbientCache$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lorg/maplibre/android/offline/b;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    iget-object v1, p0, Lorg/maplibre/android/offline/b;->o:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/offline/b;->m:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {p0, v0, v1}, Lorg/maplibre/android/offline/OfflineManager$clearAmbientCache$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
