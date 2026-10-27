.class public final Lcd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr9/i;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr9/i;Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcd/e;->a:Lr9/i;

    iput-object p2, p0, Lcd/e;->b:Ljava/lang/String;

    return-void
.end method
