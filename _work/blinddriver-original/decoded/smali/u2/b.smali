.class public final Lu2/b;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lu2/b;

.field public static final n:Lu2/b;

.field public static final o:Lu2/b;

.field public static final p:Lu2/b;

.field public static final q:Lu2/b;

.field public static final r:Lu2/b;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lu2/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->m:Lu2/b;

    new-instance v0, Lu2/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->n:Lu2/b;

    new-instance v0, Lu2/b;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->o:Lu2/b;

    new-instance v0, Lu2/b;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->p:Lu2/b;

    new-instance v0, Lu2/b;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->q:Lu2/b;

    new-instance v0, Lu2/b;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lu2/b;-><init>(II)V

    sput-object v0, Lu2/b;->r:Lu2/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lu2/b;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lu2/b;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lu2/j;

    iget p0, p1, Lu2/j;->a:I

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lu2/j;

    iget p0, p1, Lu2/j;->a:I

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/util/List;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p1, Lm1/z;

    iget-object p0, p1, Lm1/z;->a:[F

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    check-cast p1, Lm1/z;

    iget-object p0, p1, Lm1/z;->a:[F

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

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
