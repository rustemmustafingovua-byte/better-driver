.class public final Lx2/e;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final l:Lp2/m;


# direct methods
.method public constructor <init>(Lp2/m;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lx2/e;->l:Lp2/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lx2/e;->l:Lp2/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
