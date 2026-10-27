.class public final synthetic Ln/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ln/k;


# direct methods
.method public synthetic constructor <init>(Ln/k;I)V
    .locals 0

    iput p2, p0, Ln/v0;->l:I

    iput-object p1, p0, Ln/v0;->m:Ln/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln/v0;->l:I

    iget-object p0, p0, Ln/v0;->m:Ln/k;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/k;->q:Z

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/k;->q:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
