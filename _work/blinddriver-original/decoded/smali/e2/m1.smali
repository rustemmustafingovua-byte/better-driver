.class public final Le2/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/r1;


# instance fields
.field public final l:Le2/l1;


# direct methods
.method public constructor <init>(Le2/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/m1;->l:Le2/l1;

    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 0

    iget-object p0, p0, Le2/m1;->l:Le2/l1;

    check-cast p0, Lf1/q;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    return p0
.end method
