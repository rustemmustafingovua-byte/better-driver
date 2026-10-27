.class public final synthetic Lod/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lod/r1;->l:I

    iput-object p2, p0, Lod/r1;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 0

    iget p1, p0, Lod/r1;->l:I

    iget-object p0, p0, Lod/r1;->m:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lp4/a;

    sget-object p1, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp4/a;->h:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp4/a;->h:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    sget-object p1, Lod/e3;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onDestroy()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStop()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onPause()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onResume()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStart()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
