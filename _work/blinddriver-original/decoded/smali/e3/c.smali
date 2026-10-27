.class public final Le3/c;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Le3/c;

.field public static final n:Le3/c;

.field public static final o:Le3/c;

.field public static final p:Le3/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le3/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le3/c;-><init>(II)V

    sput-object v0, Le3/c;->m:Le3/c;

    new-instance v0, Le3/c;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le3/c;-><init>(II)V

    sput-object v0, Le3/c;->n:Le3/c;

    new-instance v0, Le3/c;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le3/c;-><init>(II)V

    sput-object v0, Le3/c;->o:Le3/c;

    new-instance v0, Le3/c;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Le3/c;-><init>(II)V

    sput-object v0, Le3/c;->p:Le3/c;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le3/c;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Le3/c;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lm2/x;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lc2/e1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Le3/k;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    iget-object p1, p1, Le3/k;->C:Le3/j;

    new-instance v0, Le3/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Le3/a;-><init>(Li9/a;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
