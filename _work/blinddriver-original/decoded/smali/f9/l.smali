.class public final Lf9/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf9/l;->a:I

    iput-object p2, p0, Lf9/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li9/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf9/l;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    check-cast p1, La9/h;

    iput-object p1, p0, Lf9/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lf9/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lj9/n;->k([Ljava/lang/Object;)Lj9/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lr9/c;

    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lr9/c;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lq9/k;

    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lq9/k;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lf9/l;->b:Ljava/lang/Object;

    check-cast p0, La9/h;

    invoke-static {p0}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance v0, Lf9/k;

    invoke-direct {v0, p0}, Lf9/k;-><init>(Lf9/l;)V

    return-object v0

    nop

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
