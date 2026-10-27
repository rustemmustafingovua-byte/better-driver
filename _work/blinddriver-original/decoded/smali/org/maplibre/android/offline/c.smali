.class public final synthetic Lorg/maplibre/android/offline/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lorg/maplibre/android/offline/OfflineManager;

.field public final synthetic n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;I)V
    .locals 0

    iput p3, p0, Lorg/maplibre/android/offline/c;->l:I

    iput-object p1, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p2, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/maplibre/android/offline/c;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$resetDatabase$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$packDatabase$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$invalidateAmbientCache$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lorg/maplibre/android/offline/c;->m:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/c;->n:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$clearAmbientCache$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

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
