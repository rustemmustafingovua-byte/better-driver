.class public final Ln/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/e1;

.field public final b:Lr0/e1;

.field public final c:Lr0/e1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/i0;->a:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/i0;->b:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/i0;->c:Lr0/e1;

    return-void
.end method
