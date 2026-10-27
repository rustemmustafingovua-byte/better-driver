.class public final Lf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf/b;

.field public final b:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;Lf/b;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf/e;->a:Lf/b;

    iput-object p1, p0, Lf/e;->b:Lg/a;

    return-void
.end method
