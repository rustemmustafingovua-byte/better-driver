.class public final synthetic Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li0/c;

.field public final synthetic n:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li0/c;Li9/a;II)V
    .locals 0

    iput p4, p0, Li0/a;->l:I

    iput-object p1, p0, Li0/a;->m:Li0/c;

    iput-object p2, p0, Li0/a;->n:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Li0/a;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Li0/a;->m:Li0/c;

    iget-object p0, p0, Li0/a;->n:Li9/a;

    invoke-virtual {v0, p0, p1, p2}, Li0/c;->b(Li9/a;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Li0/a;->m:Li0/c;

    iget-object p0, p0, Li0/a;->n:Li9/a;

    invoke-virtual {v0, p0, p1, p2}, Li0/c;->b(Li9/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
