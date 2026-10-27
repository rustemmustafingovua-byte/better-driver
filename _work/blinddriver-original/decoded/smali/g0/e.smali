.class public final Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# instance fields
.field public final a:Lw9/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    iput-object v0, p0, Lg0/e;->a:Lw9/e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Lg0/e;->a:Lw9/e;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, v0}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
