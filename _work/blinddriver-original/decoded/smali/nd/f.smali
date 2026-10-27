.class public final Lnd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# static fields
.field public static final b:Lnd/f;

.field public static final c:Lnd/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lnd/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnd/f;-><init>(I)V

    sput-object v0, Lnd/f;->b:Lnd/f;

    new-instance v0, Lnd/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnd/f;-><init>(I)V

    sput-object v0, Lnd/f;->c:Lnd/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lnd/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lnd/f;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ln/p1;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ln/p1;-><init>(I)V

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, p2, v0}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance p0, Ln/p1;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ln/p1;-><init>(I)V

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, p2, v0}, Lr/x2;->e(Ly1/x;Li9/f;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
