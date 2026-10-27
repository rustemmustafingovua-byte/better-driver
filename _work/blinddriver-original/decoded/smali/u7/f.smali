.class public final Lu7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/h;


# instance fields
.field public final a:Lu7/i;


# direct methods
.method public constructor <init>(Lu7/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu7/f;->a:Lu7/i;

    return-void
.end method


# virtual methods
.method public final a(Lu7/i;)V
    .locals 2

    new-instance v0, Lf5/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lf5/a;->run()V

    return-void
.end method
