.class public final Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# instance fields
.field public final a:Li0/e;

.field public final b:Lw9/e;


# direct methods
.method public constructor <init>(Li0/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/b;->a:Li0/e;

    const/4 p1, 0x0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object p1

    iput-object p1, p0, Li0/b;->b:Lw9/e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Li0/b;->b:Lw9/e;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, v0}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
