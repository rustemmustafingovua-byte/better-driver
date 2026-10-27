.class public abstract Lid/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "^pk\\.[A-Za-z0-9_\\-]{10,}\\.[A-Za-z0-9_\\-]{10,}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lid/n;->a:Lr9/i;

    return-void
.end method
