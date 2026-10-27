.class public final Lm/y;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm/z;


# direct methods
.method public synthetic constructor <init>(Lm/z;I)V
    .locals 0

    iput p2, p0, Lm/y;->l:I

    iput-object p1, p0, Lm/y;->m:Lm/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm/y;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ln/c1;

    sget-object v0, Lm/p;->l:Lm/p;

    sget-object v1, Lm/p;->m:Lm/p;

    invoke-virtual {p1, v0, v1}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lm/v;->c:Ln/r0;

    goto :goto_0

    :cond_0
    sget-object v0, Lm/p;->n:Lm/p;

    invoke-virtual {p1, v1, v0}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lm/y;->m:Lm/z;

    iget-object p0, p0, Lm/z;->D:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    sget-object p0, Lm/v;->c:Ln/r0;

    goto :goto_0

    :cond_1
    sget-object p0, Lm/v;->c:Ln/r0;

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Ln/c1;

    sget-object v0, Lm/p;->l:Lm/p;

    sget-object v1, Lm/p;->m:Lm/p;

    invoke-virtual {p1, v0, v1}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object p0, p0, Lm/y;->m:Lm/z;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm/z;->C:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_4

    iget-object v2, p0, Lm/o;->c:Ln/x;

    goto :goto_1

    :cond_2
    sget-object v0, Lm/p;->n:Lm/p;

    invoke-virtual {p1, v1, v0}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lm/z;->D:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_4

    iget-object v2, p0, Lm/o;->c:Ln/x;

    goto :goto_1

    :cond_3
    sget-object v2, Lm/v;->d:Ln/r0;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    sget-object v2, Lm/v;->d:Ln/r0;

    :cond_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
