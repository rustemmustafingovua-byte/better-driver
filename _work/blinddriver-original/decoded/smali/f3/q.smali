.class public final Lf3/q;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final m:Lf3/q;

.field public static final n:Lf3/q;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf3/q;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf3/q;-><init>(II)V

    sput-object v0, Lf3/q;->m:Lf3/q;

    new-instance v0, Lf3/q;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf3/q;-><init>(II)V

    sput-object v0, Lf3/q;->n:Lf3/q;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf3/q;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lf3/q;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p0, v1

    invoke-virtual {p1, p0, p2}, Lr0/q;->T(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    and-int/2addr p0, v1

    invoke-virtual {p1, p0, p2}, Lr0/q;->T(IZ)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
