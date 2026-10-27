.class public final Le3/n;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final m:Le3/n;

.field public static final n:Le3/n;

.field public static final o:Le3/n;

.field public static final p:Le3/n;

.field public static final q:Le3/n;

.field public static final r:Le3/n;

.field public static final s:Le3/n;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le3/n;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->m:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->n:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->o:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->p:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->q:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->r:Le3/n;

    new-instance v0, Le3/n;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Le3/n;-><init>(II)V

    sput-object v0, Le3/n;->s:Le3/n;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le3/n;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Le3/n;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Le2/g0;

    check-cast p2, Lb3/m;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Le2/g0;

    check-cast p2, Ln4/g;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/k;->setSavedStateRegistryOwner(Ln4/g;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Le2/g0;

    check-cast p2, Landroidx/lifecycle/v;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/k;->setLifecycleOwner(Landroidx/lifecycle/v;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Le2/g0;

    check-cast p2, Lb3/c;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/k;->setDensity(Lb3/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Le2/g0;

    check-cast p2, Lf1/r;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/k;->setModifier(Lf1/r;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Le2/g0;

    check-cast p2, Li9/c;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/z;->setReleaseBlock(Li9/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_5
    check-cast p1, Le2/g0;

    check-cast p2, Li9/c;

    invoke-static {p1}, Le3/l;->e(Le2/g0;)Le3/z;

    move-result-object p0

    invoke-virtual {p0, p2}, Le3/z;->setUpdateBlock(Li9/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
