.class public final synthetic Lb0/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/v2;


# direct methods
.method public synthetic constructor <init>(Lb0/v2;I)V
    .locals 0

    iput p2, p0, Lb0/s2;->l:I

    iput-object p1, p0, Lb0/s2;->m:Lb0/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/s2;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb0/s2;->m:Lb0/v2;

    iget-object p0, p0, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {p0}, Lr0/a1;->g()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lb0/s2;->m:Lb0/v2;

    iget-object v0, p0, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    iget-object p0, p0, Lb0/v2;->b:Lr0/a1;

    invoke-virtual {p0}, Lr0/a1;->g()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
