.class public final Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/b;


# instance fields
.field public final a:Lr0/e1;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/a;

    invoke-direct {v0, p1}, Lu1/a;-><init>(I)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lu1/c;->a:Lr0/e1;

    return-void
.end method
