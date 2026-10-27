.class public final Le0/f;
.super Le0/b;
.source "SourceFile"


# static fields
.field public static final b:Le0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le0/f;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Le0/b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le0/f;->b:Le0/f;

    return-void
.end method
