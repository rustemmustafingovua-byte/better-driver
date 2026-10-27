.class public final synthetic Lo0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Z


# direct methods
.method public synthetic constructor <init>(ILi9/c;Z)V
    .locals 0

    iput p1, p0, Lo0/j0;->l:I

    iput-object p2, p0, Lo0/j0;->m:Li9/c;

    iput-boolean p3, p0, Lo0/j0;->n:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo0/j0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lo0/j0;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lo0/j0;->m:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lo0/j0;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lo0/j0;->m:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
