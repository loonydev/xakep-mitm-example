.class Lokhttp3/internal/platform/AndroidPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;,
        Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;,
        Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

.field private final getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/platform/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setUseSessionTickets":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p3, "setHostname":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p4, "getAlpnSelectedProtocol":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local p5, "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 58
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    .line 63
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 64
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    .line 65
    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    .line 66
    iput-object p4, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    .line 67
    iput-object p5, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    .line 68
    return-void
.end method

.method private api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 196
    .local p2, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 197
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 199
    .end local v0    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p3, "networkSecurityPolicy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 185
    .local p2, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 186
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    .local v0, "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 188
    .end local v0    # "isCleartextTrafficPermittedMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/platform/AndroidPlatform;->api23IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 12

    .line 239
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 242
    move-object v4, v1

    goto :goto_0

    .line 240
    .end local v1    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 242
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    move-object v4, v2

    .line 246
    .local v4, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Lokhttp3/internal/platform/OptionalMethod;

    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-direct {v5, v0, v1, v3}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 248
    .local v5, "setUseSessionTickets":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    new-instance v6, Lokhttp3/internal/platform/OptionalMethod;

    const-string v1, "setHostname"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v7

    invoke-direct {v6, v0, v1, v3}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 250
    .local v6, "setHostname":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, "getAlpnSelectedProtocol":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v3, 0x0

    .line 253
    .local v3, "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->supportsAlpn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 254
    new-instance v8, Lokhttp3/internal/platform/OptionalMethod;

    const-class v9, [B

    const-string v10, "getAlpnSelectedProtocol"

    new-array v11, v7, [Ljava/lang/Class;

    invoke-direct {v8, v9, v10, v11}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v1, v8

    .line 256
    new-instance v8, Lokhttp3/internal/platform/OptionalMethod;

    const-string v9, "setAlpnProtocols"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v10, [B

    aput-object v10, v2, v7

    invoke-direct {v8, v0, v9, v2}, Lokhttp3/internal/platform/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v2, v8

    .line 256
    .end local v3    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .local v2, "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    goto :goto_1

    .line 260
    .end local v2    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v3    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :cond_0
    move-object v2, v3

    .line 260
    .end local v3    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v2    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :goto_1
    new-instance v9, Lokhttp3/internal/platform/AndroidPlatform;

    move-object v3, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v9

    .line 262
    .end local v1    # "getAlpnSelectedProtocol":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v2    # "setAlpnProtocols":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v4    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "setUseSessionTickets":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    .end local v6    # "setHostname":Lokhttp3/internal/platform/OptionalMethod;, "Lokhttp3/internal/platform/OptionalMethod<Ljava/net/Socket;>;"
    :catch_1
    move-exception v1

    .line 266
    return-object v0
.end method

.method private static supportsAlpn()Z
    .locals 2

    .line 210
    const-string v0, "GMSCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 211
    return v1

    .line 214
    :cond_0
    :try_start_0
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 218
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 8
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 223
    :try_start_0
    const-string v0, "android.net.http.X509TrustManagerExtensions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 225
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    .local v3, "extensions":Ljava/lang/Object;
    const-string v5, "checkServerTrusted"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, [Ljava/security/cert/X509Certificate;

    aput-object v7, v6, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v6, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    .local v1, "checkServerTrusted":Ljava/lang/reflect/Method;
    new-instance v4, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;

    invoke-direct {v4, v3, v1}, Lokhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 229
    .end local v0    # "extensionsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "checkServerTrusted":Ljava/lang/reflect/Method;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "extensions":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v1

    return-object v1
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 6
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 275
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 278
    new-instance v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    invoke-direct {v1, p1, v0}, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 279
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    return-object v1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 122
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setHostname:Lokhttp3/internal/platform/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/platform/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v2, p1}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lokhttp3/internal/platform/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v2

    aput-object v2, v1, v0

    move-object v0, v1

    .line 129
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v0    # "parameters":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassCastException;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    .line 87
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v1

    .line 91
    .end local v1    # "ioException":Ljava/io/IOException;
    :cond_0
    throw v0

    .line 77
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1    # "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v1

    .line 74
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "ioException":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_1
    throw v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4

    .line 436
    const/4 v0, 0x1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    .local v0, "tryTls12":Z
    :goto_0
    goto :goto_1

    .line 437
    .end local v0    # "tryTls12":Z
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    nop

    .line 443
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "tryTls12":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 445
    :try_start_1
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 446
    :catch_1
    move-exception v1

    .line 452
    :cond_1
    :try_start_2
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 453
    :catch_2
    move-exception v1

    .line 454
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TLS provider"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 137
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/platform/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/platform/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 138
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    nop

    :cond_2
    return-object v1
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "closer"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->createAndOpen(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 171
    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    .local v0, "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    .local v1, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "networkSecurityPolicy":Ljava/lang/Object;
    invoke-direct {p0, p1, v0, v2}, Lokhttp3/internal/platform/AndroidPlatform;->api24IsCleartextTrafficPermitted(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 177
    .end local v0    # "networkPolicyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "networkSecurityPolicy":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unable to determine cleartext support"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 143
    .local v0, "logLevel":I
    :goto_0
    const/16 v1, 0xa

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    :cond_1
    const/4 v2, 0x0

    .line 146
    .local v2, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 146
    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 147
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 148
    .local v4, "newline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    move v4, v5

    .line 150
    :cond_3
    add-int/lit16 v5, v2, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 151
    .local v5, "end":I
    const-string v6, "OkHttp"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 152
    move v2, v5

    .line 153
    .end local v5    # "end":I
    if-lt v2, v4, :cond_3

    .line 146
    .end local v4    # "newline":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_4
    return-void
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->closeGuard:Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-virtual {v0, p2}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpen(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    .local v0, "reported":Z
    if-nez v0, :cond_0

    .line 165
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lokhttp3/internal/platform/AndroidPlatform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 102
    :try_start_0
    const-string v1, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 102
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    .local v1, "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "sslParameters"

    invoke-static {p1, v1, v2}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 108
    .end local v1    # "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    return-object v2

    .line 111
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    const-class v1, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "x509TrustManager"

    invoke-static {v0, v1, v2}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 113
    .local v1, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_1

    return-object v1

    .line 115
    :cond_1
    const-class v2, Ljavax/net/ssl/X509TrustManager;

    const-string v3, "trustManager"

    invoke-static {v0, v2, v3}, Lokhttp3/internal/platform/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2
.end method
