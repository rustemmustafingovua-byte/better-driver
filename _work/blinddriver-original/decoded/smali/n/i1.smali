.class public final synthetic Ln/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln/h1;


# direct methods
.method public synthetic constructor <init>(Ln/h1;I)V
    .locals 0

    iput p2, p0, Ln/i1;->l:I

    iput-object p1, p0, Ln/i1;->m:Ln/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln/i1;->l:I

    check-cast p1, Lr0/g0;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ln/l1;

    const/4 v0, 0x1

    iget-object p0, p0, Ln/i1;->m:Ln/h1;

    invoke-direct {p1, p0, v0}, Ln/l1;-><init>(Ln/h1;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Ln/l1;

    const/4 v0, 0x0

    iget-object p0, p0, Ln/i1;->m:Ln/h1;

    invoke-direct {p1, p0, v0}, Ln/l1;-><init>(Ln/h1;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
