.class public final Ldadb/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH_TYPE_RSA_PUBLIC:I = 0x3

.field public static final AUTH_TYPE_SIGNATURE:I = 0x2

.field public static final AUTH_TYPE_TOKEN:I = 0x1

.field public static final CMD_AUTH:I = 0x48545541

.field public static final CMD_CLSE:I = 0x45534c43

.field public static final CMD_CNXN:I = 0x4e584e43

.field public static final CMD_OKAY:I = 0x59414b4f

.field public static final CMD_OPEN:I = 0x4e45504f

.field public static final CMD_WRTE:I = 0x45545257

.field public static final CONNECT_MAXDATA:I = 0x100000

.field private static final CONNECT_PAYLOAD:[B

.field public static final CONNECT_VERSION:I = 0x1000000

.field public static final INSTANCE:Ldadb/Constants;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldadb/Constants;

    invoke-direct {v0}, Ldadb/Constants;-><init>()V

    sput-object v0, Ldadb/Constants;->INSTANCE:Ldadb/Constants;

    const-string v0, "host::\u0000"

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ldadb/Constants;->CONNECT_PAYLOAD:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONNECT_PAYLOAD()[B
    .locals 0

    sget-object p0, Ldadb/Constants;->CONNECT_PAYLOAD:[B

    return-object p0
.end method
