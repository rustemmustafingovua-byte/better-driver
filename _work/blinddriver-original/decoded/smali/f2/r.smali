.class public final Lf2/r;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lf2/r;

.field public static final n:Lf2/r;

.field public static final o:Lf2/r;

.field public static final p:Lf2/r;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf2/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf2/r;-><init>(II)V

    sput-object v0, Lf2/r;->m:Lf2/r;

    new-instance v0, Lf2/r;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf2/r;-><init>(II)V

    sput-object v0, Lf2/r;->n:Lf2/r;

    new-instance v0, Lf2/r;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf2/r;-><init>(II)V

    sput-object v0, Lf2/r;->o:Lf2/r;

    new-instance v0, Lf2/r;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf2/r;-><init>(II)V

    sput-object v0, Lf2/r;->p:Lf2/r;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf2/r;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf2/r;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lf2/k0;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/j1;

    sget-object p0, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    sget-object p0, Lf2/o0;->b:Lr0/s2;

    invoke-static {p1, p0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lm2/p;

    invoke-virtual {p1}, Lm2/p;->k()Lm2/m;

    move-result-object p0

    sget-object p1, Lm2/t;->A:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lk1/b0;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
