.class public final synthetic Lkd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lkd/x;

.field public final synthetic n:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public synthetic constructor <init>(Lkd/x;Lorg/maplibre/android/maps/MapView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lkd/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/o;->m:Lkd/x;

    iput-object p2, p0, Lkd/o;->n:Lorg/maplibre/android/maps/MapView;

    return-void
.end method

.method public synthetic constructor <init>(Lkd/x;Lorg/maplibre/android/maps/MapView;I)V
    .locals 0

    .line 2
    const/4 p3, 0x1

    iput p3, p0, Lkd/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/o;->m:Lkd/x;

    iput-object p2, p0, Lkd/o;->n:Lorg/maplibre/android/maps/MapView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkd/o;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lkd/o;->m:Lkd/x;

    iget-object p0, p0, Lkd/o;->n:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0, p1, p2}, Lkd/x;->c(Lorg/maplibre/android/maps/MapView;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lkd/o;->m:Lkd/x;

    iget-object p0, p0, Lkd/o;->n:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p2, p0, p1, v2}, Lkd/x;->c(Lorg/maplibre/android/maps/MapView;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
