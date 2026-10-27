.class public final Lf3/b;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lf3/b;

.field public static final n:Lf3/b;

.field public static final o:Lf3/b;

.field public static final p:Lf3/b;

.field public static final q:Lf3/b;

.field public static final r:Lf3/b;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf3/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->m:Lf3/b;

    new-instance v0, Lf3/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->n:Lf3/b;

    new-instance v0, Lf3/b;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->o:Lf3/b;

    new-instance v0, Lf3/b;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->p:Lf3/b;

    new-instance v0, Lf3/b;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->q:Lf3/b;

    new-instance v0, Lf3/b;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lf3/b;-><init>(II)V

    sput-object v0, Lf3/b;->r:Lf3/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf3/b;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lf3/b;->l:I

    sget-object v0, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lf3/x;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lf3/x;->m()V

    :cond_0
    return-object v0

    :pswitch_0
    check-cast p1, Lc2/e1;

    return-object v0

    :pswitch_1
    check-cast p1, Lm2/x;

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/t;->w:Lm2/w;

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    check-cast p1, Lc2/e1;

    return-object v0

    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    return-object v0

    :pswitch_4
    check-cast p1, Lm2/x;

    sget-object p0, Lm2/v;->a:[Lp9/d;

    sget-object p0, Lm2/t;->x:Lm2/w;

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
