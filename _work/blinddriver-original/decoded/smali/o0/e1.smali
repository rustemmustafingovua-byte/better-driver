.class public final Lo0/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo0/e1;->a:I

    iput-object p2, p0, Lo0/e1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget v0, p0, Lo0/e1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo0/e1;->b:Ljava/lang/Object;

    check-cast p0, Lo0/b3;

    iget-wide v0, p0, Lo0/b3;->c:J

    return-wide v0

    :pswitch_0
    iget-object p0, p0, Lo0/e1;->b:Ljava/lang/Object;

    check-cast p0, Lo0/f1;

    iget-object v0, p0, Lo0/f1;->E:Lm1/q;

    invoke-interface {v0}, Lm1/q;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo0/a3;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/y2;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lo0/y2;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lo0/z0;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm1/p;

    iget-wide v0, p0, Lm1/p;->a:J

    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
